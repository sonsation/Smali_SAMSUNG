.class Lcom/sec/android/app/camera/shootingmode/TagShot$4;
.super Ljava/lang/Object;
.source "TagShot.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/shootingmode/TagShot;->fetchForecastInfo(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/sec/android/app/camera/shootingmode/util/AccuForecastInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/TagShot;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/TagShot;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot$4;->this$0:Lcom/sec/android/app/camera/shootingmode/TagShot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/sec/android/app/camera/shootingmode/util/AccuForecastInfo;)V
    .locals 6

    const-string v0, "TagShot"

    const-string v1, "fetchForecastInfo - onResponse"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/sec/android/app/camera/shootingmode/util/AccuForecastInfo;->CurrentConditions:Lcom/sec/android/app/camera/shootingmode/util/AccuForecastInfo$CurrentConditionInfo;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/sec/android/app/camera/shootingmode/util/AccuForecastInfo;->Location:Lcom/sec/android/app/camera/shootingmode/util/AccuForecastInfo$LocationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/sec/android/app/camera/shootingmode/util/AccuForecastInfo;->CurrentConditions:Lcom/sec/android/app/camera/shootingmode/util/AccuForecastInfo$CurrentConditionInfo;

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/util/AccuForecastInfo$CurrentConditionInfo;->Pressure:Lcom/sec/android/app/camera/shootingmode/util/AccuForecastInfo$PressureInfo;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/sec/android/app/camera/shootingmode/util/AccuForecastInfo;->CurrentConditions:Lcom/sec/android/app/camera/shootingmode/util/AccuForecastInfo$CurrentConditionInfo;

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/util/AccuForecastInfo$CurrentConditionInfo;->Temperature:Lcom/sec/android/app/camera/shootingmode/util/AccuForecastInfo$TemperatureInfo;

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "TagShot"

    const-string v1, "fetchForecastInfo is null"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot$4;->this$0:Lcom/sec/android/app/camera/shootingmode/TagShot;

    iget-object v1, p1, Lcom/sec/android/app/camera/shootingmode/util/AccuForecastInfo;->CurrentConditions:Lcom/sec/android/app/camera/shootingmode/util/AccuForecastInfo$CurrentConditionInfo;

    iget-object v1, v1, Lcom/sec/android/app/camera/shootingmode/util/AccuForecastInfo$CurrentConditionInfo;->Pressure:Lcom/sec/android/app/camera/shootingmode/util/AccuForecastInfo$PressureInfo;

    iget-wide v2, v1, Lcom/sec/android/app/camera/shootingmode/util/AccuForecastInfo$PressureInfo;->Value:D

    double-to-float v1, v2

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/TagShot;->access$802(Lcom/sec/android/app/camera/shootingmode/TagShot;F)F

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot$4;->this$0:Lcom/sec/android/app/camera/shootingmode/TagShot;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot$4;->this$0:Lcom/sec/android/app/camera/shootingmode/TagShot;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/TagShot;->access$800(Lcom/sec/android/app/camera/shootingmode/TagShot;)F

    move-result v1

    const v2, 0x4207749d

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/TagShot;->access$802(Lcom/sec/android/app/camera/shootingmode/TagShot;F)F

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot$4;->this$0:Lcom/sec/android/app/camera/shootingmode/TagShot;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/TagShot;->access$900(Lcom/sec/android/app/camera/shootingmode/TagShot;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot$4;->this$0:Lcom/sec/android/app/camera/shootingmode/TagShot;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot$4;->this$0:Lcom/sec/android/app/camera/shootingmode/TagShot;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/TagShot;->access$800(Lcom/sec/android/app/camera/shootingmode/TagShot;)F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/TagShot$4;->this$0:Lcom/sec/android/app/camera/shootingmode/TagShot;

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/TagShot;->access$900(Lcom/sec/android/app/camera/shootingmode/TagShot;)F

    move-result v2

    invoke-static {v1, v2}, Landroid/hardware/SensorManager;->getAltitude(FF)F

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/TagShot;->access$1002(Lcom/sec/android/app/camera/shootingmode/TagShot;F)F

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot$4;->this$0:Lcom/sec/android/app/camera/shootingmode/TagShot;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot$4;->this$0:Lcom/sec/android/app/camera/shootingmode/TagShot;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/TagShot;->access$1000(Lcom/sec/android/app/camera/shootingmode/TagShot;)F

    move-result v1

    float-to-double v2, v1

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-int v1, v2

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/TagShot;->access$1102(Lcom/sec/android/app/camera/shootingmode/TagShot;I)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot$4;->this$0:Lcom/sec/android/app/camera/shootingmode/TagShot;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot$4;->this$0:Lcom/sec/android/app/camera/shootingmode/TagShot;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/TagShot$4;->this$0:Lcom/sec/android/app/camera/shootingmode/TagShot;

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/TagShot;->access$1100(Lcom/sec/android/app/camera/shootingmode/TagShot;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/shootingmode/TagShot;->access$1200(Lcom/sec/android/app/camera/shootingmode/TagShot;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/TagShot;->access$1102(Lcom/sec/android/app/camera/shootingmode/TagShot;I)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot$4;->this$0:Lcom/sec/android/app/camera/shootingmode/TagShot;

    const-string v1, "%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/TagShot$4;->this$0:Lcom/sec/android/app/camera/shootingmode/TagShot;

    invoke-static {v4}, Lcom/sec/android/app/camera/shootingmode/TagShot;->access$1100(Lcom/sec/android/app/camera/shootingmode/TagShot;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/TagShot;->access$1302(Lcom/sec/android/app/camera/shootingmode/TagShot;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot$4;->this$0:Lcom/sec/android/app/camera/shootingmode/TagShot;

    iget-object v1, p1, Lcom/sec/android/app/camera/shootingmode/util/AccuForecastInfo;->Location:Lcom/sec/android/app/camera/shootingmode/util/AccuForecastInfo$LocationInfo;

    iget-object v1, v1, Lcom/sec/android/app/camera/shootingmode/util/AccuForecastInfo$LocationInfo;->LocalizedName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/TagShot;->access$1402(Lcom/sec/android/app/camera/shootingmode/TagShot;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot$4;->this$0:Lcom/sec/android/app/camera/shootingmode/TagShot;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/TagShot;->access$1500(Lcom/sec/android/app/camera/shootingmode/TagShot;)Lcom/samsung/android/glview/GLText;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/TagShot$4;->this$0:Lcom/sec/android/app/camera/shootingmode/TagShot;

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/TagShot;->access$1400(Lcom/sec/android/app/camera/shootingmode/TagShot;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/TagShot$4;->this$0:Lcom/sec/android/app/camera/shootingmode/TagShot;

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/TagShot;->access$1300(Lcom/sec/android/app/camera/shootingmode/TagShot;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ft"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot$4;->this$0:Lcom/sec/android/app/camera/shootingmode/TagShot;

    iget-object v1, p1, Lcom/sec/android/app/camera/shootingmode/util/AccuForecastInfo;->CurrentConditions:Lcom/sec/android/app/camera/shootingmode/util/AccuForecastInfo$CurrentConditionInfo;

    iget v1, v1, Lcom/sec/android/app/camera/shootingmode/util/AccuForecastInfo$CurrentConditionInfo;->WeatherIcon:I

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/TagShot;->access$1602(Lcom/sec/android/app/camera/shootingmode/TagShot;I)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot$4;->this$0:Lcom/sec/android/app/camera/shootingmode/TagShot;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot$4;->this$0:Lcom/sec/android/app/camera/shootingmode/TagShot;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/TagShot$4;->this$0:Lcom/sec/android/app/camera/shootingmode/TagShot;

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/TagShot;->access$1600(Lcom/sec/android/app/camera/shootingmode/TagShot;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/shootingmode/TagShot;->access$1800(Lcom/sec/android/app/camera/shootingmode/TagShot;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/TagShot;->access$1702(Lcom/sec/android/app/camera/shootingmode/TagShot;I)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot$4;->this$0:Lcom/sec/android/app/camera/shootingmode/TagShot;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/TagShot;->access$1900(Lcom/sec/android/app/camera/shootingmode/TagShot;)Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot$4;->this$0:Lcom/sec/android/app/camera/shootingmode/TagShot;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/TagShot;->access$1700(Lcom/sec/android/app/camera/shootingmode/TagShot;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot$4;->this$0:Lcom/sec/android/app/camera/shootingmode/TagShot;

    iget-object v1, p1, Lcom/sec/android/app/camera/shootingmode/util/AccuForecastInfo;->CurrentConditions:Lcom/sec/android/app/camera/shootingmode/util/AccuForecastInfo$CurrentConditionInfo;

    iget-object v1, v1, Lcom/sec/android/app/camera/shootingmode/util/AccuForecastInfo$CurrentConditionInfo;->Temperature:Lcom/sec/android/app/camera/shootingmode/util/AccuForecastInfo$TemperatureInfo;

    iget-wide v2, v1, Lcom/sec/android/app/camera/shootingmode/util/AccuForecastInfo$TemperatureInfo;->Value:D

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/TagShot;->access$2002(Lcom/sec/android/app/camera/shootingmode/TagShot;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot$4;->this$0:Lcom/sec/android/app/camera/shootingmode/TagShot;

    iget-object v1, p1, Lcom/sec/android/app/camera/shootingmode/util/AccuForecastInfo;->CurrentConditions:Lcom/sec/android/app/camera/shootingmode/util/AccuForecastInfo$CurrentConditionInfo;

    iget-object v1, v1, Lcom/sec/android/app/camera/shootingmode/util/AccuForecastInfo$CurrentConditionInfo;->Temperature:Lcom/sec/android/app/camera/shootingmode/util/AccuForecastInfo$TemperatureInfo;

    iget-object v1, v1, Lcom/sec/android/app/camera/shootingmode/util/AccuForecastInfo$TemperatureInfo;->Unit:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/TagShot;->access$2102(Lcom/sec/android/app/camera/shootingmode/TagShot;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot$4;->this$0:Lcom/sec/android/app/camera/shootingmode/TagShot;

    iget-object v1, p1, Lcom/sec/android/app/camera/shootingmode/util/AccuForecastInfo;->CurrentConditions:Lcom/sec/android/app/camera/shootingmode/util/AccuForecastInfo$CurrentConditionInfo;

    iget v1, v1, Lcom/sec/android/app/camera/shootingmode/util/AccuForecastInfo$CurrentConditionInfo;->RelativeHumidity:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/TagShot;->access$2202(Lcom/sec/android/app/camera/shootingmode/TagShot;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot$4;->this$0:Lcom/sec/android/app/camera/shootingmode/TagShot;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/TagShot;->access$2300(Lcom/sec/android/app/camera/shootingmode/TagShot;)Lcom/samsung/android/glview/GLText;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/TagShot$4;->this$0:Lcom/sec/android/app/camera/shootingmode/TagShot;

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/TagShot;->access$2000(Lcom/sec/android/app/camera/shootingmode/TagShot;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xb0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/TagShot$4;->this$0:Lcom/sec/android/app/camera/shootingmode/TagShot;

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/TagShot;->access$2100(Lcom/sec/android/app/camera/shootingmode/TagShot;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/TagShot$4;->this$0:Lcom/sec/android/app/camera/shootingmode/TagShot;

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/TagShot;->access$2200(Lcom/sec/android/app/camera/shootingmode/TagShot;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot$4;->this$0:Lcom/sec/android/app/camera/shootingmode/TagShot;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/TagShot;->access$2400(Lcom/sec/android/app/camera/shootingmode/TagShot;)V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot$4;->this$0:Lcom/sec/android/app/camera/shootingmode/TagShot;

    const-string v1, "31"

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/TagShot;->access$1302(Lcom/sec/android/app/camera/shootingmode/TagShot;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "TagShot"

    const-string v1, "mCurrentPressure is invalid"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/sec/android/app/camera/shootingmode/util/AccuForecastInfo;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/shootingmode/TagShot$4;->onResponse(Lcom/sec/android/app/camera/shootingmode/util/AccuForecastInfo;)V

    return-void
.end method
