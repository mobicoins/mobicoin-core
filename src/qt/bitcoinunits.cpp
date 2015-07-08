// Copyright (c) 2011-2014 The Bitcoin developers
// Copyright (c) 2014-2015 The Mobicoin developers
// Distributed under the MIT/X11 software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#include "bitcoinunits.h"
#include <QStringList>

BitcoinUnits::BitcoinUnits(QObject *parent):
        QAbstractListModel(parent),
        unitlist(availableUnits())
{
}

QList<BitcoinUnits::Unit> BitcoinUnits::availableUnits()
{
    QList<BitcoinUnits::Unit> unitlist;
    unitlist.append(kMCP);
    unitlist.append(MCP);
    unitlist.append(mMCP);
    unitlist.append(uMCP);
    //unitlist.append(duffs);
    return unitlist;
}

bool BitcoinUnits::valid(int unit)
{
    switch(unit)
    {
    case kMCP:
    case MCP:
    case mMCP:
    case uMCP:
    //case duffs:
        return true;
    default:
        return false;
    }
}

QString BitcoinUnits::name(int unit)
{
    if(!TestNet() && !RegTest())
    {
        switch(unit)
        {
            case kMCP: return QString::fromUtf8("kMCP");
            case MCP:  return QString("MCP");
            case mMCP: return QString("mMCP");
            case uMCP: return QString::fromUtf8("μMCP");
            //case duffs: return QString::fromUtf8("duffs");
            default: return QString("???");
        }
    }
    else
    {
        switch(unit)
        {
            case kMCP: return QString::fromUtf8("tkMCP");
            case MCP:  return QString("tMCP");
            case mMCP: return QString("mtMCP");
            case uMCP: return QString::fromUtf8("μtMCP");
            //case duffs: return QString::fromUtf8("tduffs");
            default: return QString("???");
        }
    }
}

QString BitcoinUnits::description(int unit)
{
    if(!TestNet() && !RegTest())
    {
        switch(unit)
        {
            case kMCP: return QString("Killo-Mobicoin (1,000)");
            case MCP:  return QString("Mobicoin");
            case mMCP: return QString("Milli-Mobicoin (1 / 1,000)");
            case uMCP: return QString("Micro-Mobicoin (1 / 1,000,000)");
            //case duffs: return QString("Ten Nano-Mobicoin (1 / 100,000,000)");
            default: return QString("???");
        }
    }
    else
    {
        switch(unit)
        {
            case kMCP: return QString("Killo-TestMobicoin (1,000)");
            case MCP:  return QString("TestDashs");
            case mMCP: return QString("Milli-TestDash (1 / 1,000)");
            case uMCP: return QString("Micro-TestDash (1 / 1,000,000)");
            //case duffs: return QString("Ten Nano-TestDash (1 / 100,000,000)");
            default: return QString("???");
        }
    }
}

qint64 BitcoinUnits::factor(int unit)
{
    switch(unit)
    {
    case kMCP: return 100000000;
    case MCP:  return 100000;
    case mMCP: return 100;
    case uMCP: return 1;
    default:   return 100000000;
    }
}

qint64 BitcoinUnits::maxAmount(int unit)
{
    switch(unit)
    {
    case kMCP: return Q_INT64_C(90000000000);
    case MCP:  return Q_INT64_C(90000000000000);
    case mMCP: return Q_INT64_C(90000000000000000);
    case uMCP: return Q_INT64_C(9000000000000000000);
    default:   return 0;
    }
}

int BitcoinUnits::amountDigits(int unit)
{
    switch(unit)
    {
    case kMCP: return 11;  //            90,000,000,000 (# digits, without commas)
    case MCP:  return 14; //        90,000,000,000,000
    case mMCP: return 17; //    90,000,000,000,000,000
    case uMCP: return 19;// 9,000,000,000,000,000,000
    default: return 0;
    }
}

int BitcoinUnits::decimals(int unit)
{
    switch(unit)
    {
    case kMCP: return 8;
    case MCP:  return 5;
    case mMCP: return 2;
    case uMCP: return 0;
    default: return 0;
    }
}

QString BitcoinUnits::format(int unit, qint64 n, bool fPlus)
{
    // Note: not using straight sprintf here because we do NOT want
    // localized number formatting.
    if(!valid(unit))
        return QString(); // Refuse to format invalid unit
    qint64 coin = factor(unit);
    int num_decimals = decimals(unit);
    qint64 n_abs = (n > 0 ? n : -n);
    qint64 quotient = n_abs / coin;
    qint64 remainder = n_abs % coin;
    QString quotient_str = QString::number(quotient);
    QString remainder_str = QString::number(remainder).rightJustified(num_decimals, '0');

    // Right-trim excess zeros after the decimal point
    int nTrim = 0;
    for (int i = remainder_str.size()-1; i>=2 && (remainder_str.at(i) == '0'); --i)
        ++nTrim;
    remainder_str.chop(nTrim);

    if (n < 0)
        quotient_str.insert(0, '-');
    else if (fPlus && n > 0)
        quotient_str.insert(0, '+');

    if (num_decimals <= 0)
        return quotient_str;

    return quotient_str + QString(".") + remainder_str;
}

QString BitcoinUnits::formatWithUnit(int unit, qint64 amount, bool plussign)
{
    return format(unit, amount, plussign) + QString(" ") + name(unit);
}

bool BitcoinUnits::parse(int unit, const QString &value, qint64 *val_out)
{
    if(!valid(unit) || value.isEmpty())
        return false; // Refuse to parse invalid unit or empty string
    int num_decimals = decimals(unit);
    QStringList parts = value.split(".");

    if(parts.size() > 2)
    {
        return false; // More than one dot
    }
    QString whole = parts[0];
    QString decimals;

    if(parts.size() > 1)
    {
        decimals = parts[1];
    }
    if(decimals.size() > num_decimals)
    {
        return false; // Exceeds max precision
    }
    bool ok = false;
    QString str = whole + decimals.leftJustified(num_decimals, '0');

    if(str.size() > 18)
    {
        return false; // Longer numbers will exceed 63 bits
    }
    qint64 retvalue = str.toLongLong(&ok);
    if(val_out)
    {
        *val_out = retvalue;
    }
    return ok;
}

int BitcoinUnits::rowCount(const QModelIndex &parent) const
{
    Q_UNUSED(parent);
    return unitlist.size();
}

QVariant BitcoinUnits::data(const QModelIndex &index, int role) const
{
    int row = index.row();
    if(row >= 0 && row < unitlist.size())
    {
        Unit unit = unitlist.at(row);
        switch(role)
        {
        case Qt::EditRole:
        case Qt::DisplayRole:
            return QVariant(name(unit));
        case Qt::ToolTipRole:
            return QVariant(description(unit));
        case UnitRole:
            return QVariant(static_cast<int>(unit));
        }
    }
    return QVariant();
}
