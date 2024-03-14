package com.entity.vo;

import com.entity.WaimaiOrderEntity;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;

/**
 * 外卖订单
 * 手机端接口返回实体辅助类
 * （主要作用去除一些不必要的字段）
 */
@TableName("waimai_order")
public class WaimaiOrderVO implements Serializable {
    private static final long serialVersionUID = 1L;


    /**
     * 主键
     */

    @TableField(value = "id")
    private Integer id;


    /**
     * 订单号
     */

    @TableField(value = "waimai_order_uuid_number")
    private String waimaiOrderUuidNumber;


    /**
     * 收货地址
     */

    @TableField(value = "address_id")
    private Integer addressId;


    /**
     * 外卖
     */

    @TableField(value = "waimai_id")
    private Integer waimaiId;


    /**
     * 用户
     */

    @TableField(value = "yonghu_id")
    private Integer yonghuId;


    /**
     * 购买数量
     */

    @TableField(value = "buy_number")
    private Integer buyNumber;


    /**
     * 实付价格
     */

    @TableField(value = "waimai_order_true_price")
    private Double waimaiOrderTruePrice;


    /**
     * 送餐人姓名
     */

    @TableField(value = "waimai_order_courier_name")
    private String waimaiOrderCourierName;


    /**
     * 送餐人电话
     */

    @TableField(value = "waimai_order_courier_number")
    private String waimaiOrderCourierNumber;


    /**
     * 订单类型
     */

    @TableField(value = "waimai_order_types")
    private Integer waimaiOrderTypes;


    /**
     * 支付类型
     */

    @TableField(value = "waimai_order_payment_types")
    private Integer waimaiOrderPaymentTypes;


    /**
     * 订单创建时间
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat

    @TableField(value = "insert_time")
    private Date insertTime;


    /**
     * 创建时间 show3
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat

    @TableField(value = "create_time")
    private Date createTime;


    /**
	 * 设置：主键
	 */
    public Integer getId() {
        return id;
    }


    /**
	 * 获取：主键
	 */

    public void setId(Integer id) {
        this.id = id;
    }
    /**
	 * 设置：订单号
	 */
    public String getWaimaiOrderUuidNumber() {
        return waimaiOrderUuidNumber;
    }


    /**
	 * 获取：订单号
	 */

    public void setWaimaiOrderUuidNumber(String waimaiOrderUuidNumber) {
        this.waimaiOrderUuidNumber = waimaiOrderUuidNumber;
    }
    /**
	 * 设置：收货地址
	 */
    public Integer getAddressId() {
        return addressId;
    }


    /**
	 * 获取：收货地址
	 */

    public void setAddressId(Integer addressId) {
        this.addressId = addressId;
    }
    /**
	 * 设置：外卖
	 */
    public Integer getWaimaiId() {
        return waimaiId;
    }


    /**
	 * 获取：外卖
	 */

    public void setWaimaiId(Integer waimaiId) {
        this.waimaiId = waimaiId;
    }
    /**
	 * 设置：用户
	 */
    public Integer getYonghuId() {
        return yonghuId;
    }


    /**
	 * 获取：用户
	 */

    public void setYonghuId(Integer yonghuId) {
        this.yonghuId = yonghuId;
    }
    /**
	 * 设置：购买数量
	 */
    public Integer getBuyNumber() {
        return buyNumber;
    }


    /**
	 * 获取：购买数量
	 */

    public void setBuyNumber(Integer buyNumber) {
        this.buyNumber = buyNumber;
    }
    /**
	 * 设置：实付价格
	 */
    public Double getWaimaiOrderTruePrice() {
        return waimaiOrderTruePrice;
    }


    /**
	 * 获取：实付价格
	 */

    public void setWaimaiOrderTruePrice(Double waimaiOrderTruePrice) {
        this.waimaiOrderTruePrice = waimaiOrderTruePrice;
    }
    /**
	 * 设置：送餐人姓名
	 */
    public String getWaimaiOrderCourierName() {
        return waimaiOrderCourierName;
    }


    /**
	 * 获取：送餐人姓名
	 */

    public void setWaimaiOrderCourierName(String waimaiOrderCourierName) {
        this.waimaiOrderCourierName = waimaiOrderCourierName;
    }
    /**
	 * 设置：送餐人电话
	 */
    public String getWaimaiOrderCourierNumber() {
        return waimaiOrderCourierNumber;
    }


    /**
	 * 获取：送餐人电话
	 */

    public void setWaimaiOrderCourierNumber(String waimaiOrderCourierNumber) {
        this.waimaiOrderCourierNumber = waimaiOrderCourierNumber;
    }
    /**
	 * 设置：订单类型
	 */
    public Integer getWaimaiOrderTypes() {
        return waimaiOrderTypes;
    }


    /**
	 * 获取：订单类型
	 */

    public void setWaimaiOrderTypes(Integer waimaiOrderTypes) {
        this.waimaiOrderTypes = waimaiOrderTypes;
    }
    /**
	 * 设置：支付类型
	 */
    public Integer getWaimaiOrderPaymentTypes() {
        return waimaiOrderPaymentTypes;
    }


    /**
	 * 获取：支付类型
	 */

    public void setWaimaiOrderPaymentTypes(Integer waimaiOrderPaymentTypes) {
        this.waimaiOrderPaymentTypes = waimaiOrderPaymentTypes;
    }
    /**
	 * 设置：订单创建时间
	 */
    public Date getInsertTime() {
        return insertTime;
    }


    /**
	 * 获取：订单创建时间
	 */

    public void setInsertTime(Date insertTime) {
        this.insertTime = insertTime;
    }
    /**
	 * 设置：创建时间 show3
	 */
    public Date getCreateTime() {
        return createTime;
    }


    /**
	 * 获取：创建时间 show3
	 */

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

}
