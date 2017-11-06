.class final enum Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity$QualityType;
.super Ljava/lang/Enum;
.source "DownloadAudioQualityActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "QualityType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity$QualityType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity$QualityType;

.field public static final enum HIGH:Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity$QualityType;

.field public static final enum MIDDLE:Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity$QualityType;


# instance fields
.field private intType:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 29
    new-instance v0, Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity$QualityType;

    const-string v1, "MIDDLE"

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity$QualityType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity$QualityType;->MIDDLE:Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity$QualityType;

    new-instance v0, Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity$QualityType;

    const-string v1, "HIGH"

    invoke-direct {v0, v1, v2, v4}, Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity$QualityType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity$QualityType;->HIGH:Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity$QualityType;

    .line 28
    new-array v0, v4, [Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity$QualityType;

    sget-object v1, Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity$QualityType;->MIDDLE:Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity$QualityType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity$QualityType;->HIGH:Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity$QualityType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity$QualityType;->$VALUES:[Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity$QualityType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "intType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 34
    iput p3, p0, Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity$QualityType;->intType:I

    .line 35
    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity$QualityType;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity$QualityType;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity$QualityType;->getIntType()I

    move-result v0

    return v0
.end method

.method private getIntType()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity$QualityType;->intType:I

    return v0
.end method

.method public static getQualityType(I)Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity$QualityType;
    .locals 6
    .param p0, "intType"    # I

    .prologue
    .line 42
    sget-object v0, Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity$QualityType;->MIDDLE:Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity$QualityType;

    .line 44
    .local v0, "type":Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity$QualityType;
    invoke-static {}, Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity$QualityType;->values()[Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity$QualityType;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v1, v3, v2

    .line 45
    .local v1, "value":Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity$QualityType;
    invoke-direct {v1}, Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity$QualityType;->getIntType()I

    move-result v5

    if-ne v5, p0, :cond_0

    .line 46
    move-object v0, v1

    .line 44
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 50
    .end local v1    # "value":Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity$QualityType;
    :cond_1
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity$QualityType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 28
    const-class v0, Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity$QualityType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity$QualityType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity$QualityType;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity$QualityType;->$VALUES:[Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity$QualityType;

    invoke-virtual {v0}, [Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity$QualityType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/music/common/settings/DownloadAudioQualityActivity$QualityType;

    return-object v0
.end method
