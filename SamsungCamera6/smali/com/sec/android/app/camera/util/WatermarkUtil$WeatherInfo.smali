.class public Lcom/sec/android/app/camera/util/WatermarkUtil$WeatherInfo;
.super Ljava/lang/Object;
.source "WatermarkUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/util/WatermarkUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "WeatherInfo"
.end annotation


# static fields
.field private static final WEATHER_INFO_TRUSTED:I = 0xc8


# instance fields
.field private mCurrentCityId:Ljava/lang/String;

.field private mCurrentTemperature:F

.field private mHighTemperature:F

.field private mIconNumber:I

.field private mLowTemperature:F

.field private mTempScale:I

.field private mTrusted:Z


# direct methods
.method protected constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/sec/android/app/camera/util/WatermarkUtil$WeatherInfo;->mIconNumber:I

    iput v1, p0, Lcom/sec/android/app/camera/util/WatermarkUtil$WeatherInfo;->mCurrentTemperature:F

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/util/WatermarkUtil$WeatherInfo;->mTempScale:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/util/WatermarkUtil$WeatherInfo;->mCurrentCityId:Ljava/lang/String;

    iput v1, p0, Lcom/sec/android/app/camera/util/WatermarkUtil$WeatherInfo;->mHighTemperature:F

    iput v1, p0, Lcom/sec/android/app/camera/util/WatermarkUtil$WeatherInfo;->mLowTemperature:F

    iput-boolean v2, p0, Lcom/sec/android/app/camera/util/WatermarkUtil$WeatherInfo;->mTrusted:Z

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/util/WatermarkUtil$WeatherInfo;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/util/WatermarkUtil$WeatherInfo;->getWeatherString(I)I

    move-result v0

    return v0
.end method

.method private getWeatherString(I)I
    .locals 3

    const-string v0, "WatermarkUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWeatherString = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    const v0, 0x7f0a0344

    :goto_0
    return v0

    :pswitch_0
    const v0, 0x7f0a032d

    goto :goto_0

    :pswitch_1
    const v0, 0x7f0a032e

    goto :goto_0

    :pswitch_2
    const v0, 0x7f0a032f

    goto :goto_0

    :pswitch_3
    const v0, 0x7f0a0330

    goto :goto_0

    :pswitch_4
    const v0, 0x7f0a0331

    goto :goto_0

    :pswitch_5
    const v0, 0x7f0a0332

    goto :goto_0

    :pswitch_6
    const v0, 0x7f0a0333

    goto :goto_0

    :pswitch_7
    const v0, 0x7f0a0334

    goto :goto_0

    :pswitch_8
    const v0, 0x7f0a0335

    goto :goto_0

    :pswitch_9
    const v0, 0x7f0a0336

    goto :goto_0

    :pswitch_a
    const v0, 0x7f0a0337

    goto :goto_0

    :pswitch_b
    const v0, 0x7f0a0338

    goto :goto_0

    :pswitch_c
    const v0, 0x7f0a0339

    goto :goto_0

    :pswitch_d
    const v0, 0x7f0a033a

    goto :goto_0

    :pswitch_e
    const v0, 0x7f0a033b

    goto :goto_0

    :pswitch_f
    const v0, 0x7f0a033c

    goto :goto_0

    :pswitch_10
    const v0, 0x7f0a033d

    goto :goto_0

    :pswitch_11
    const v0, 0x7f0a033e

    goto :goto_0

    :pswitch_12
    const v0, 0x7f0a033f

    goto :goto_0

    :pswitch_13
    const v0, 0x7f0a0340

    goto :goto_0

    :pswitch_14
    const v0, 0x7f0a0341

    goto :goto_0

    :pswitch_15
    const v0, 0x7f0a0342

    goto :goto_0

    :pswitch_16
    const v0, 0x7f0a0343

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
    .end packed-switch
.end method


# virtual methods
.method protected dump()V
    .locals 3

    const-string v0, "WatermarkUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WeatherInfo [icon, temp, scale] = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/util/WatermarkUtil$WeatherInfo;->mIconNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/util/WatermarkUtil$WeatherInfo;->mCurrentTemperature:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/util/WatermarkUtil$WeatherInfo;->mTempScale:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[cityId, highTemp, lowTemp] = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/util/WatermarkUtil$WeatherInfo;->mCurrentCityId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/util/WatermarkUtil$WeatherInfo;->mHighTemperature:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/util/WatermarkUtil$WeatherInfo;->mLowTemperature:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", trusted = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/camera/util/WatermarkUtil$WeatherInfo;->mTrusted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected getCurrentCityId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/util/WatermarkUtil$WeatherInfo;->mCurrentCityId:Ljava/lang/String;

    return-object v0
.end method

.method protected getCurrentTemperature()F
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/util/WatermarkUtil$WeatherInfo;->mCurrentTemperature:F

    return v0
.end method

.method protected getHighTemperature()F
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/util/WatermarkUtil$WeatherInfo;->mHighTemperature:F

    return v0
.end method

.method protected getIconNumber()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/util/WatermarkUtil$WeatherInfo;->mIconNumber:I

    return v0
.end method

.method protected getLowTemperature()F
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/util/WatermarkUtil$WeatherInfo;->mLowTemperature:F

    return v0
.end method

.method protected getTempScale()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/util/WatermarkUtil$WeatherInfo;->mTempScale:I

    return v0
.end method

.method protected isTrusted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/util/WatermarkUtil$WeatherInfo;->mTrusted:Z

    return v0
.end method

.method protected setCurrentCityId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/util/WatermarkUtil$WeatherInfo;->mCurrentCityId:Ljava/lang/String;

    return-void
.end method

.method protected setCurrentTemperature(F)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/util/WatermarkUtil$WeatherInfo;->mCurrentTemperature:F

    return-void
.end method

.method protected setHighTemperature(F)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/util/WatermarkUtil$WeatherInfo;->mHighTemperature:F

    return-void
.end method

.method protected setIconNumber(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/util/WatermarkUtil$WeatherInfo;->mIconNumber:I

    return-void
.end method

.method protected setLowTemperature(F)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/util/WatermarkUtil$WeatherInfo;->mLowTemperature:F

    return-void
.end method

.method protected setTempScale(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/util/WatermarkUtil$WeatherInfo;->mTempScale:I

    return-void
.end method

.method protected setTrusted(I)V
    .locals 3

    const/16 v2, 0xc8

    if-ne p1, v2, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/util/WatermarkUtil$WeatherInfo;->mCurrentCityId:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/util/WatermarkUtil$WeatherInfo;->mTrusted:Z

    const-string v0, "WatermarkUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetWork State is Fine : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " & currentCityId is not null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/util/WatermarkUtil$WeatherInfo;->mTrusted:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/util/WatermarkUtil$WeatherInfo;->mCurrentCityId:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, "WatermarkUtil"

    const-string v1, "currentCityId is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eq p1, v2, :cond_0

    const-string v0, "WatermarkUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetWork disabled : Don\'t refresh weath info : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
