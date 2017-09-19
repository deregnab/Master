<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_2(7:0)">
        </signal>
        <signal name="switches(7:0)" />
        <signal name="led(7:0)" />
        <port polarity="Input" name="switches(7:0)" />
        <port polarity="Output" name="led(7:0)" />
        <blockdef name="ibuf8">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="96" x="128" y="-44" height="24" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
        </blockdef>
        <blockdef name="obuft8">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="96" y1="-48" y2="-96" x1="96" />
            <line x2="64" y1="-96" y2="-96" x1="96" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
            <line x2="64" y1="-96" y2="-96" x1="0" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <rect width="96" x="128" y="-44" height="24" />
        </blockdef>
        <block symbolname="ibuf8" name="XLXI_1">
            <blockpin signalname="switches(7:0)" name="I(7:0)" />
            <blockpin signalname="XLXN_2(7:0)" name="O(7:0)" />
        </block>
        <block symbolname="obuft8" name="XLXI_2">
            <blockpin signalname="XLXN_2(7:0)" name="I(7:0)" />
            <blockpin name="T" />
            <blockpin signalname="led(7:0)" name="O(7:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="2688" y="1888" name="XLXI_2" orien="R90" />
        <instance x="2432" y="1424" name="XLXI_1" orien="R90" />
        <branch name="XLXN_2(7:0)">
            <wire x2="2464" y1="1648" y2="1792" x1="2464" />
            <wire x2="2464" y1="1792" y2="2160" x1="2464" />
            <wire x2="2720" y1="1792" y2="1792" x1="2464" />
            <wire x2="2736" y1="1792" y2="1792" x1="2720" />
            <wire x2="2720" y1="1792" y2="1888" x1="2720" />
            <wire x2="2720" y1="1648" y2="1792" x1="2720" />
        </branch>
        <branch name="switches(7:0)">
            <wire x2="2464" y1="1392" y2="1424" x1="2464" />
        </branch>
        <iomarker fontsize="28" x="2464" y="1392" name="switches(7:0)" orien="R270" />
        <branch name="led(7:0)">
            <wire x2="2720" y1="2112" y2="2144" x1="2720" />
        </branch>
        <iomarker fontsize="28" x="2720" y="2144" name="led(7:0)" orien="R90" />
    </sheet>
</drawing>