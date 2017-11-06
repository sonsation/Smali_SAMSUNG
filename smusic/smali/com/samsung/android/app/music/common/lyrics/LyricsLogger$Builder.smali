.class public Lcom/samsung/android/app/music/common/lyrics/LyricsLogger$Builder;
.super Ljava/lang/Object;
.source "LyricsLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/lyrics/LyricsLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mCloseId:Ljava/lang/String;

.field private mJumpId:Ljava/lang/String;

.field private mMagnificationId:Ljava/lang/String;

.field private final mScreenId:Ljava/lang/String;

.field private mTriggerEventId:Ljava/lang/String;

.field private mTriggerScreenId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "screenId"    # Ljava/lang/String;

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-object p1, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsLogger$Builder;->mScreenId:Ljava/lang/String;

    .line 130
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/common/lyrics/LyricsLogger$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/lyrics/LyricsLogger$Builder;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsLogger$Builder;->mScreenId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/common/lyrics/LyricsLogger$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/lyrics/LyricsLogger$Builder;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsLogger$Builder;->mTriggerScreenId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/common/lyrics/LyricsLogger$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/lyrics/LyricsLogger$Builder;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsLogger$Builder;->mTriggerEventId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/common/lyrics/LyricsLogger$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/lyrics/LyricsLogger$Builder;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsLogger$Builder;->mMagnificationId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/common/lyrics/LyricsLogger$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/lyrics/LyricsLogger$Builder;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsLogger$Builder;->mJumpId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/music/common/lyrics/LyricsLogger$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/lyrics/LyricsLogger$Builder;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsLogger$Builder;->mCloseId:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/samsung/android/app/music/common/lyrics/LyricsLogger;
    .locals 2

    .prologue
    .line 154
    new-instance v0, Lcom/samsung/android/app/music/common/lyrics/LyricsLogger;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/common/lyrics/LyricsLogger;-><init>(Lcom/samsung/android/app/music/common/lyrics/LyricsLogger$Builder;Lcom/samsung/android/app/music/common/lyrics/LyricsLogger$1;)V

    return-object v0
.end method

.method public setCloseId(Ljava/lang/String;)Lcom/samsung/android/app/music/common/lyrics/LyricsLogger$Builder;
    .locals 0
    .param p1, "closeId"    # Ljava/lang/String;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsLogger$Builder;->mCloseId:Ljava/lang/String;

    .line 140
    return-object p0
.end method

.method public setJumpId(Ljava/lang/String;)Lcom/samsung/android/app/music/common/lyrics/LyricsLogger$Builder;
    .locals 0
    .param p1, "jumpId"    # Ljava/lang/String;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsLogger$Builder;->mJumpId:Ljava/lang/String;

    .line 150
    return-object p0
.end method

.method public setMagnificationId(Ljava/lang/String;)Lcom/samsung/android/app/music/common/lyrics/LyricsLogger$Builder;
    .locals 0
    .param p1, "magnificationId"    # Ljava/lang/String;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsLogger$Builder;->mMagnificationId:Ljava/lang/String;

    .line 145
    return-object p0
.end method

.method public setTriggerId(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/common/lyrics/LyricsLogger$Builder;
    .locals 0
    .param p1, "triggerScreenId"    # Ljava/lang/String;
    .param p2, "triggerEventId"    # Ljava/lang/String;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsLogger$Builder;->mTriggerScreenId:Ljava/lang/String;

    .line 134
    iput-object p2, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsLogger$Builder;->mTriggerEventId:Ljava/lang/String;

    .line 135
    return-object p0
.end method
