package com.ray.company.company.dto;

import lombok.Data;

import java.util.List;

/**
 * 文件返回list
 *
 * @author SL
 * @date 2018/03/28
 */
@Data
public class FileByteListDTO {
    private List<FileByteDto> fileByteDtoList;
}
