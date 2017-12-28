.class public Lcom/android/launcher3/common/deviceprofile/GridIconInfo;
.super Ljava/lang/Object;
.source "GridIconInfo.java"


# instance fields
.field private mContentTop:I

.field private final mDrawablePadding:I

.field private final mIconSize:I

.field private final mLineCount:I

.field private final mMaxCount:I

.field private final mTextSize:I


# direct methods
.method public constructor <init>(IIIII)V
    .locals 1
    .param p1, "maxCount"    # I
    .param p2, "iconSize"    # I
    .param p3, "textSize"    # I
    .param p4, "drawablePadding"    # I
    .param p5, "lineCount"    # I

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->mMaxCount:I

    .line 46
    iput p2, p0, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->mIconSize:I

    .line 47
    iput p3, p0, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->mTextSize:I

    .line 48
    iput p4, p0, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->mDrawablePadding:I

    .line 49
    iput p5, p0, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->mLineCount:I

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->mContentTop:I

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # [Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 34
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->mMaxCount:I

    .line 35
    const/4 v1, 0x1

    aget-object v1, p2, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1, v0}, Lcom/android/launcher3/Utilities;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->mIconSize:I

    .line 36
    const/4 v1, 0x2

    aget-object v1, p2, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1, v0}, Lcom/android/launcher3/Utilities;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->mTextSize:I

    .line 37
    const/4 v1, 0x3

    aget-object v1, p2, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1, v0}, Lcom/android/launcher3/Utilities;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->mDrawablePadding:I

    .line 38
    const/4 v1, 0x4

    aget-object v1, p2, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->mLineCount:I

    .line 40
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->mContentTop:I

    .line 41
    return-void
.end method


# virtual methods
.method public getContentTop()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->mContentTop:I

    return v0
.end method

.method public getDrawablePadding()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->mDrawablePadding:I

    return v0
.end method

.method public getIconSize()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->mIconSize:I

    return v0
.end method

.method public getLineCount()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->mLineCount:I

    return v0
.end method

.method public getMaxCount()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->mMaxCount:I

    return v0
.end method

.method public getTextSize()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->mTextSize:I

    return v0
.end method

.method public setContentTop(I)V
    .locals 0
    .param p1, "contentTop"    # I

    .prologue
    .line 74
    iput p1, p0, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->mContentTop:I

    .line 75
    return-void
.end method
