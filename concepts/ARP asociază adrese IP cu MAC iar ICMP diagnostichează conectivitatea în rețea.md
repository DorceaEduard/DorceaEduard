---
descriere: "ARP asociază adrese IP (nivel 3) cu adrese MAC (nivel 2) în rețeaua locală, iar ICMP permite diagnosticarea conectivității și raportarea erorilor în rețelele IP"
type: definition
source: "RC_C5_2025_l3_retea_2_fara_quizz.pdf"
confidence: established
materii: ["[[Retelistică]]"]
created: 2026-07-02
---
# ARP asociază adrese IP cu MAC, iar ICMP diagnostichează conectivitatea în rețea

**ARP** (Address Resolution Protocol) funcționează în LAN: un dispozitiv trimite un ARP Request (broadcast) întrebând „cine are IP-ul X?”, iar destinația răspunde cu ARP Reply (unicast) conținând adresa MAC. Tabela ARP (vizualizată cu `arp -a`) stochează perechi IP-MAC. În IPv6, ARP este înlocuit de NDP (Neighbor Discovery Protocol). **ICMP** (Internet Control Message Protocol) este utilizat pentru ping (Echo Request/Reply), traceroute și raportarea erorilor (Destination Unreachable, Time Exceeded). [[Protocolul IP oferă un serviciu best-effort]] încapsulează mesajele ICMP.

Topics: [[Retelistică]]
