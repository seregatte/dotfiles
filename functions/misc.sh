function +macBookEnableLAN(){
    cat <(for f in `sudo cat /opt/cisco/anyconnect/ac_pf.conf | sed -E 's/include."([^"]*)"/\1/g'`; do sudo cat $f; done | sed -E '/^$/d') | sed -E '/^block log quick inet[0-9]? all .*$/d' | sudo pfctl -a cisco.anyconnect.vpn -f -
}

function +macBookDisableLAN(){
    sudo pfctl -a cisco.anyconnect.vpn -f /opt/cisco/anyconnect/ac_pf.conf
}