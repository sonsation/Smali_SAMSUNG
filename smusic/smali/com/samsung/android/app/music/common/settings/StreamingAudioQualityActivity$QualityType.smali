.class final enum Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$QualityType;
.super Ljava/lang/Enum;
.source "StreamingAudioQualityActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "QualityType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$QualityType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$QualityType;

.field public static final enum HIGH:Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$QualityType;

.field public static final enum LOW:Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$QualityType;

.field public static final enum MIDDLE:Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$QualityType;


# instance fields
.field private intType:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 41
    new-instance v0, Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$QualityType;

    const-string v1, "LOW"

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$QualityType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$QualityType;->LOW:Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$QualityType;

    new-instance v0, Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$QualityType;

    const-string v1, "MIDDLE"

    invoke-direct {v0, v1, v3, v3}, Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$QualityType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$QualityType;->MIDDLE:Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$QualityType;

    new-instance v0, Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$QualityType;

    const-string v1, "HIGH"

    invoke-direct {v0, v1, v4, v4}, Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$QualityType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$QualityType;->HIGH:Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$QualityType;

    .line 40
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$QualityType;

    sget-object v1, Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$QualityType;->LOW:Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$QualityType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$QualityType;->MIDDLE:Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$QualityType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$QualityType;->HIGH:Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$QualityType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$QualityType;->$VALUES:[Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$QualityType;

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
    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 46
    iput p3, p0, Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$QualityType;->intType:I

    .line 47
    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$QualityType;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$QualityType;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$QualityType;->getIntType()I

    move-result v0

    return v0
.end method

.method private getIntType()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$QualityType;->intType:I

    return v0
.end method

.method public static getQualityType(I)Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$QualityType;
    .locals 6
    .param p0, "intType"    # I

    .prologue
    .line 54
    sget-object v0, Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$QualityType;->MIDDLE:Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$QualityType;

    .line 56
    .local v0, "type":Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$QualityType;
    invoke-static {}, Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$QualityType;->values()[Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$QualityType;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v1, v3, v2

    .line 57
    .local v1, "value":Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$QualityType;
    invoke-direct {v1}, Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$QualityType;->getIntType()I

    move-result v5

    if-ne v5, p0, :cond_0

    .line 58
    move-object v0, v1

    .line 56
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 62
    .end local v1    # "value":Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$QualityType;
    :cond_1
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$QualityType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 40
    const-class v0, Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$QualityType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$QualityType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$QualityType;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$QualityType;->$VALUES:[Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$QualityType;

    invoke-virtual {v0}, [Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$QualityType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/music/common/settings/StreamingAudioQualityActivity$QualityType;

    return-object v0
.end method
