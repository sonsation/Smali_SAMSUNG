.class public Lcom/samsung/android/app/music/common/metaedit/CharsetConstants;
.super Ljava/lang/Object;
.source "CharsetConstants.java"


# static fields
.field public static final BIG5:Ljava/lang/String; = "Big5"

.field public static final BYTES_BOM_LE:[B

.field public static final EUC_CN:Ljava/lang/String; = "EUC-CN"

.field public static final EUC_JP:Ljava/lang/String; = "EUC-JP"

.field public static final EUC_KR:Ljava/lang/String; = "EUC-KR"

.field public static final GBK:Ljava/lang/String; = "GBK"

.field public static final ISO_8859_1:Ljava/lang/String; = "ISO-8859-1"

.field public static final MS949:Ljava/lang/String; = "MS949"

.field public static final SHIFT_JIS:Ljava/lang/String; = "Shift_JIS"

.field public static final UTF_16:Ljava/lang/String; = "UTF-16"

.field public static final UTF_16_BE:Ljava/lang/String; = "UTF-16BE"

.field public static final UTF_16_LE:Ljava/lang/String; = "UTF-16LE"

.field public static final UTF_8:Ljava/lang/String; = "UTF-8"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/app/music/common/metaedit/CharsetConstants;->BYTES_BOM_LE:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x1t
        -0x2t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
