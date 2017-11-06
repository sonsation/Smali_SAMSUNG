.class Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Contract$Padding;
.super Ljava/lang/Object;
.source "ID3v2Contract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Contract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Padding"
.end annotation


# static fields
.field static final BYTE_PADDING:[B

.field static final PADDING:Ljava/lang/String; = "00000000"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 246
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Contract$Padding;->BYTE_PADDING:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
