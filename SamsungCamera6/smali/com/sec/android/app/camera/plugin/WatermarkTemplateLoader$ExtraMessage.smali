.class public final Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;
.super Ljava/lang/Object;
.source "WatermarkTemplateLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExtraMessage"
.end annotation


# instance fields
.field public mDefaultText:Ljava/lang/String;

.field public mEditable:Z

.field public mExtra:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraType;

.field public mFontSize:F

.field public mHAlign:I

.field public mHeight:F

.field public mIsVertical:Z

.field public mLeft:F

.field public mTextColor:I

.field public mTextFont:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextFont;

.field public mTextType:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

.field public mTop:F

.field public mVAlign:I

.field public mWidth:F


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraType;FFFFZZLjava/lang/String;Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;FLcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextFont;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;->mExtra:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraType;

    iput p2, p0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;->mLeft:F

    iput p3, p0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;->mTop:F

    iput p4, p0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;->mWidth:F

    iput p5, p0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;->mHeight:F

    iput-boolean p6, p0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;->mEditable:Z

    iput-boolean p7, p0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;->mIsVertical:Z

    iput-object p8, p0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;->mDefaultText:Ljava/lang/String;

    iput-object p9, p0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;->mTextType:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

    iput p10, p0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;->mFontSize:F

    iput-object p11, p0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;->mTextFont:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextFont;

    iput p12, p0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;->mHAlign:I

    iput p13, p0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;->mVAlign:I

    invoke-static {}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader;->access$200()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;->mTextColor:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraType;FFFFZZLjava/lang/String;Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;FLcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextFont;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;->mExtra:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraType;

    iput p2, p0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;->mLeft:F

    iput p3, p0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;->mTop:F

    iput p4, p0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;->mWidth:F

    iput p5, p0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;->mHeight:F

    iput-boolean p6, p0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;->mEditable:Z

    iput-boolean p7, p0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;->mIsVertical:Z

    iput-object p8, p0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;->mDefaultText:Ljava/lang/String;

    iput-object p9, p0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;->mTextType:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

    iput p10, p0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;->mFontSize:F

    iput-object p11, p0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;->mTextFont:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextFont;

    iput p12, p0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;->mHAlign:I

    iput p13, p0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;->mVAlign:I

    iput p14, p0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;->mTextColor:I

    return-void
.end method


# virtual methods
.method public getDefaultText()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$1;->$SwitchMap$com$sec$android$app$camera$plugin$WatermarkTemplateLoader$TextType:[I

    iget-object v1, p0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;->mTextType:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;->mDefaultText:Ljava/lang/String;

    :goto_0
    return-object v0

    :pswitch_0
    invoke-static {}, Lcom/sec/android/app/camera/util/WatermarkUtil;->getCurrentYear()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    const-string v0, "yyyy.MM.dd"

    invoke-static {v0}, Lcom/sec/android/app/camera/util/WatermarkUtil;->getDateTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    const-string v0, "yyyy.MM.dd.kk:mm"

    invoke-static {v0}, Lcom/sec/android/app/camera/util/WatermarkUtil;->getDateTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    invoke-static {}, Lcom/sec/android/app/camera/util/WatermarkUtil;->getCurrentDate()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    invoke-static {}, Lcom/sec/android/app/camera/util/WatermarkUtil;->getDateFormat01()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    invoke-static {}, Lcom/sec/android/app/camera/util/WatermarkUtil;->getDateFormat02()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    invoke-static {}, Lcom/sec/android/app/camera/util/WatermarkUtil;->getDateFormat03()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_7
    invoke-static {}, Lcom/sec/android/app/camera/util/WatermarkUtil;->getHoliday()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_8
    invoke-static {}, Lcom/sec/android/app/camera/util/WatermarkUtil;->getSolarTerm()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_9
    invoke-static {}, Lcom/sec/android/app/camera/util/WatermarkUtil;->getLunarYear()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_a
    invoke-static {}, Lcom/sec/android/app/camera/util/WatermarkUtil;->getCurrentDayOfWeek()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_b
    invoke-static {}, Lcom/sec/android/app/camera/util/WatermarkUtil;->getLocationString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_c
    invoke-static {}, Lcom/sec/android/app/camera/util/WatermarkUtil;->getLocationString01()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_d
    invoke-static {}, Lcom/sec/android/app/camera/util/WatermarkUtil;->getLocationString02()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_e
    invoke-static {}, Lcom/sec/android/app/camera/util/WatermarkUtil;->getGpsInfo()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_f
    invoke-static {}, Lcom/sec/android/app/camera/util/WatermarkUtil;->getPM25()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_10
    invoke-static {}, Lcom/sec/android/app/camera/util/WatermarkUtil;->getChnDate()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_11
    invoke-static {}, Lcom/sec/android/app/camera/util/WatermarkUtil;->getDateforFestival()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_12
    invoke-static {}, Lcom/sec/android/app/camera/util/WatermarkUtil;->getChnTemperature()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_13
    invoke-static {}, Lcom/sec/android/app/camera/util/WatermarkUtil;->getCity()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
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
    .end packed-switch
.end method

.method public getEditable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;->mEditable:Z

    return v0
.end method

.method public getExtraType()Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraType;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;->mExtra:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraType;

    return-object v0
.end method

.method public getFontSize()F
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;->mFontSize:F

    return v0
.end method

.method public getHAlign()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;->mHAlign:I

    return v0
.end method

.method public getHeight()F
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;->mHeight:F

    return v0
.end method

.method public getIsVertical()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;->mIsVertical:Z

    return v0
.end method

.method public getLeft()F
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;->mLeft:F

    return v0
.end method

.method public getTextColor()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;->mTextColor:I

    return v0
.end method

.method public getTextFont()Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextFont;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;->mTextFont:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextFont;

    return-object v0
.end method

.method public getTop()F
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;->mTop:F

    return v0
.end method

.method public getVAlign()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;->mVAlign:I

    return v0
.end method

.method public getWidth()F
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;->mWidth:F

    return v0
.end method
