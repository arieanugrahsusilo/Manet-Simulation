# File: calculate_pdr.awk

# Initialize variables
BEGIN {
    sent_packets = 0
    received_packets = 0
}

# Process each line in the tracefile
{
    # Check if it is a transmission line (s)
    if ($1 == "s") {
        sent_packets++
    }
    # Check if it is a reception line (r)
    else if ($1 == "r") {
        received_packets++
    }
}

# End of file processing
END {
    # Calculate Packet Delivery Ratio (PDR)
    if (sent_packets > 0) {
        pdr = (received_packets / sent_packets) * 100
        printf("Packet Delivery Ratio (PDR): %.2f%%\n", pdr)
    } else {
        print("No packets sent. PDR calculation is not applicable.")
    }
}

