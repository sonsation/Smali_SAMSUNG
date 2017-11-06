.class final enum Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetStreamingAudioQualityExecutor$Quality;
.super Ljava/lang/Enum;
.source "SetStreamingAudioQualityExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetStreamingAudioQualityExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Quality"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetStreamingAudioQualityExecutor$Quality;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetStreamingAudioQualityExecutor$Quality;

.field public static final enum QUALITY_192:Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetStreamingAudioQualityExecutor$Quality;

.field public static final enum QUALITY_320:Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetStreamingAudioQualityExecutor$Quality;

.field public static final enum QUALITY_AAC:Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetStreamingAudioQualityExecutor$Quality;


# instance fields
.field private prefValue:I

.field private slotValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 31
    new-instance v0, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetStreamingAudioQualityExecutor$Quality;

    const-string v1, "QUALITY_320"

    const-string v2, "320k"

    invoke-direct {v0, v1, v3, v2, v5}, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetStreamingAudioQualityExecutor$Quality;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetStreamingAudioQualityExecutor$Quality;->QUALITY_320:Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetStreamingAudioQualityExecutor$Quality;

    .line 32
    new-instance v0, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetStreamingAudioQualityExecutor$Quality;

    const-string v1, "QUALITY_192"

    const-string v2, "192k"

    invoke-direct {v0, v1, v4, v2, v4}, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetStreamingAudioQualityExecutor$Quality;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetStreamingAudioQualityExecutor$Quality;->QUALITY_192:Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetStreamingAudioQualityExecutor$Quality;

    .line 33
    new-instance v0, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetStreamingAudioQualityExecutor$Quality;

    const-string v1, "QUALITY_AAC"

    const-string v2, "aac+"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetStreamingAudioQualityExecutor$Quality;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetStreamingAudioQualityExecutor$Quality;->QUALITY_AAC:Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetStreamingAudioQualityExecutor$Quality;

    .line 29
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetStreamingAudioQualityExecutor$Quality;

    sget-object v1, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetStreamingAudioQualityExecutor$Quality;->QUALITY_320:Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetStreamingAudioQualityExecutor$Quality;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetStreamingAudioQualityExecutor$Quality;->QUALITY_192:Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetStreamingAudioQualityExecutor$Quality;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetStreamingAudioQualityExecutor$Quality;->QUALITY_AAC:Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetStreamingAudioQualityExecutor$Quality;

    aput-object v1, v0, v5

    sput-object v0, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetStreamingAudioQualityExecutor$Quality;->$VALUES:[Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetStreamingAudioQualityExecutor$Quality;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .param p3, "slotValue"    # Ljava/lang/String;
    .param p4, "prefValue"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 41
    iput-object p3, p0, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetStreamingAudioQualityExecutor$Quality;->slotValue:Ljava/lang/String;

    .line 42
    iput p4, p0, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetStreamingAudioQualityExecutor$Quality;->prefValue:I

    .line 43
    return-void
.end method

.method public static getQuality(Ljava/lang/String;)Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetStreamingAudioQualityExecutor$Quality;
    .locals 5
    .param p0, "parameter"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-static {}, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetStreamingAudioQualityExecutor$Quality;->values()[Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetStreamingAudioQualityExecutor$Quality;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 51
    .local v0, "value":Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetStreamingAudioQualityExecutor$Quality;
    iget-object v4, v0, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetStreamingAudioQualityExecutor$Quality;->slotValue:Ljava/lang/String;

    invoke-static {v4, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 55
    .end local v0    # "value":Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetStreamingAudioQualityExecutor$Quality;
    :goto_1
    return-object v0

    .line 50
    .restart local v0    # "value":Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetStreamingAudioQualityExecutor$Quality;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 55
    .end local v0    # "value":Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetStreamingAudioQualityExecutor$Quality;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetStreamingAudioQualityExecutor$Quality;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 29
    const-class v0, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetStreamingAudioQualityExecutor$Quality;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetStreamingAudioQualityExecutor$Quality;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetStreamingAudioQualityExecutor$Quality;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetStreamingAudioQualityExecutor$Quality;->$VALUES:[Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetStreamingAudioQualityExecutor$Quality;

    invoke-virtual {v0}, [Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetStreamingAudioQualityExecutor$Quality;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetStreamingAudioQualityExecutor$Quality;

    return-object v0
.end method


# virtual methods
.method public getPrefValue()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetStreamingAudioQualityExecutor$Quality;->prefValue:I

    return v0
.end method
