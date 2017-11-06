.class public Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;
.super Ljava/lang/Object;
.source "TintColorCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TintInfo"
.end annotation


# instance fields
.field public final gradientColorA:I

.field public final gradientColorB:I

.field public final primaryColor:I


# direct methods
.method private constructor <init>(Lcom/sec/android/gradient_color_extractor/MusicGradient$GradientColorResult;)V
    .locals 1
    .param p1, "res"    # Lcom/sec/android/gradient_color_extractor/MusicGradient$GradientColorResult;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iget v0, p1, Lcom/sec/android/gradient_color_extractor/MusicGradient$GradientColorResult;->gradientColor_a:I

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;->gradientColorA:I

    .line 65
    iget v0, p1, Lcom/sec/android/gradient_color_extractor/MusicGradient$GradientColorResult;->gradientColor_b:I

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;->gradientColorB:I

    .line 66
    iget v0, p1, Lcom/sec/android/gradient_color_extractor/MusicGradient$GradientColorResult;->primaryColor:I

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;->primaryColor:I

    .line 67
    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/gradient_color_extractor/MusicGradient$GradientColorResult;Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/gradient_color_extractor/MusicGradient$GradientColorResult;
    .param p2, "x1"    # Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$1;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;-><init>(Lcom/sec/android/gradient_color_extractor/MusicGradient$GradientColorResult;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TintInfo{gradientColorA=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;->gradientColorA:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gradientColorB=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;->gradientColorB:I

    .line 72
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", primaryColor=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;->primaryColor:I

    .line 73
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
