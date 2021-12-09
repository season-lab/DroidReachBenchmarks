#!/bin/bash

function static_mapping {
    echo "static_mapping"
    echo "=============="
    echo "Using Androguard:"
    liana --reachable --find-path-to libnative.so@target_fun ./StaticMapping.apk 2> /dev/null
    echo ""
    echo "Full iCFG Path:"
    liana --print-full-icfg-path --reachable --find-path-to libnative.so@target_fun ./StaticMapping.apk 2> /dev/null
    echo ""
    echo "Using FlowDroid:"
    liana --use-flowdroid --reachable --find-path-to libnative.so@target_fun ./StaticMapping.apk 2> /dev/null
    echo ""
}

function static_mapping_overload {
    echo "static_mapping_overload"
    echo "======================="
    echo "Using Androguard:"
    liana --reachable --find-path-to libnative.so@target_fun ./StaticMappingOverload.apk 2> /dev/null
    echo ""
    echo "Full iCFG Path:"
    liana --print-full-icfg-path --reachable --find-path-to libnative.so@target_fun ./StaticMappingOverload.apk 2> /dev/null
    echo ""
    echo "Using FlowDroid:"
    liana --use-flowdroid --reachable --find-path-to libnative.so@target_fun ./StaticMappingOverload.apk 2> /dev/null
    echo ""
}

function dynamic_mapping {
    echo "dynamic_mapping"
    echo "==============="
    echo "Using Androguard:"
    liana --reachable --find-path-to libnative.so@target_fun ./DynamicMapping.apk 2> /dev/null
    echo ""
    echo "Full iCFG Path:"
    liana --print-full-icfg-path --reachable --find-path-to libnative.so@target_fun ./DynamicMapping.apk 2> /dev/null
    echo ""
    echo "Using FlowDroid:"
    liana --use-flowdroid --reachable --find-path-to libnative.so@target_fun ./DynamicMapping.apk 2> /dev/null
    echo ""
}

function dynamic_mapping_clash {
    echo "dynamic_mapping_clash"
    echo "====================="
    echo "Using Androguard:"
    liana --reachable --find-path-to libnative.so@target_fun ./DynamicMappingClash.apk 2> /dev/null
    echo ""
    echo "Full iCFG Path:"
    liana --print-full-icfg-path --reachable --find-path-to libnative.so@target_fun ./DynamicMappingClash.apk 2> /dev/null
    echo ""
    echo "Using FlowDroid:"
    liana --use-flowdroid --reachable --find-path-to libnative.so@target_fun ./DynamicMappingClash.apk 2> /dev/null
    echo ""
}

function dynamic_mapping_nonglobal {
    echo "dynamic_mapping_nonglobal"
    echo "========================="
    echo "Using Androguard:"
    liana --reachable --find-path-to libnative.so@target_fun ./DynamicMappingNonglobal.apk 2> /dev/null
    echo ""
    echo "Full iCFG Path:"
    liana --print-full-icfg-path --reachable --find-path-to libnative.so@target_fun ./DynamicMappingNonglobal.apk 2> /dev/null
    echo ""
    echo "Using FlowDroid:"
    liana --use-flowdroid --reachable --find-path-to libnative.so@target_fun ./DynamicMappingNonglobal.apk 2> /dev/null
    echo ""
}

function nested_lib {
    echo "nested_lib"
    echo "=========="
    echo "Using Androguard:"
    liana --reachable --find-path-to libnested.so@target_fun ./NestedLib.apk 2> /dev/null
    echo ""
    echo "Full iCFG Path:"
    liana --print-full-icfg-path --reachable --find-path-to libnested.so@target_fun ./NestedLib.apk 2> /dev/null
    echo ""
    echo "Using FlowDroid:"
    liana --use-flowdroid --reachable --find-path-to libnested.so@target_fun ./NestedLib.apk 2> /dev/null
    echo ""
}

function indirect_jmp_variant {
    echo "indirect_jmp_variant"
    echo "===================="
    echo "Using Androguard:"
    liana --angr-bb-iterations 2 --reachable --find-path-to libnative.so@target_fun ./IndirectJmpVariant.apk 2> /dev/null
    echo ""
    echo "Full iCFG Path:"
    liana --angr-bb-iterations 2 --print-full-icfg-path --reachable --find-path-to libnative.so@target_fun ./IndirectJmpVariant.apk 2> /dev/null
    echo ""
    echo "Using FlowDroid:"
    liana --angr-bb-iterations 2 --use-flowdroid --reachable --find-path-to libnative.so@target_fun ./IndirectJmpVariant.apk 2> /dev/null
    echo ""
}

function high_depth {
    echo "high_depth"
    echo "=========="
    echo "Using Androguard:"
    liana --reachable --find-path-to libnative.so@target_fun ./HighDepth.apk 2> /dev/null
    echo ""
    echo "Full iCFG Path:"
    liana --print-full-icfg-path --reachable --find-path-to libnative.so@target_fun ./HighDepth.apk 2> /dev/null
    echo ""
    echo "Using FlowDroid:"
    liana --use-flowdroid --reachable --find-path-to libnative.so@target_fun ./HighDepth.apk 2> /dev/null
    echo ""
}

function indirect_jmp_high_depth {
    echo "indirect_jmp_high_depth"
    echo "======================="
    echo "Using Androguard:"
    liana --reachable --find-path-to libnative.so@target_fun ./IndirectJmpHighDepth.apk 2> /dev/null
    echo ""
    echo "Full iCFG Path:"
    liana --print-full-icfg-path --reachable --find-path-to libnative.so@target_fun ./IndirectJmpHighDepth.apk 2> /dev/null
    echo ""
    echo "Using FlowDroid:"
    liana --use-flowdroid --reachable --find-path-to libnative.so@target_fun ./IndirectJmpHighDepth.apk 2> /dev/null
    echo ""
}

if [ "$1" != "" ]; then
    $1
    exit 0
fi

static_mapping
static_mapping_overload
dynamic_mapping
dynamic_mapping_clash
dynamic_mapping_nonglobal
nested_lib
indirect_jmp_variant
high_depth
indirect_jmp_high_depth
