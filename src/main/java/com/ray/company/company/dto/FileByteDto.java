package com.ray.company.company.dto;

import lombok.Data;

@Data
public class FileByteDto {
   private byte[] buff;
   private String fileName;
   private String fileId;
}
