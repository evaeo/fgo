function MyAobScan(Bytes)
local StartAddress=0;
local EndAddress=0x00007fffffffffff;
local Scan = createMemScan();
Scan.OnlyOneResult=true;
Scan.firstScan(soExactValue, vtByteArray, rtTruncated, Bytes, "", StartAddress, EndAddress, "", fsmNotAligned, "", true, false, false, false);
Scan.waitTillDone();
return Scan.getOnlyResult();
end

--五星
--local s1_atk = string.format("%X",MyAobScan("45 30 00 00 00 00 00 00 00 00 00 00 E9 39 00 00 E9 39 00 00 00 00 00 00 00 00 00 00 00 00 00 00 B8 0B 00 00"))

--四星
--local s1_atk = string.format("%X",MyAobScan("84 2B 00 00 00 00 00 00 00 00 00 00 4F 3A 00 00 4F 3A 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00"))

--三星
--local s1_atk = string.format("%X",MyAobScan("69 2A 00 00 00 00 00 00 00 00 00 00 B7 39 00 00 B7 39 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00"))

--开始的预感
--local s1_atk = string.format("%X",MyAobScan("97 32 00 00 00 00 00 00 00 00 00 00 BA 3E 00 00 BA 3E 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00"))


local v = string.sub(s1_atk,1,5)

  local s1_np = v.."DE4"
  local s1_Hp = v.."DD0"
  print("第一个从者的HP地址："..s1_Hp)
  writeToClipboard(s1_Hp)
  print("已经复制进剪切板了。")
  writeInteger(s1_atk,888888)
  writeInteger(s1_np,10000)

  local s2_atk = v.."A94"
  local s2_np = v.."AB4"  
  writeInteger(s2_atk,888000)
  writeInteger(s2_np,10000)


  local s3_atk = v.."764"
  local s3_np = v.."784"
  writeInteger(s3_atk,888000)
  writeInteger(s3_np,10000)