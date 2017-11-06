.class public Lcom/samsung/android/sdk/ppmt/content/CardAppData;
.super Ljava/lang/Object;
.source "CardAppData.java"


# instance fields
.field private mid:Ljava/lang/String;

.field private msgType:Ljava/lang/String;

.field private targetid:Ljava/lang/String;

.field private userdata:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "mid"    # Ljava/lang/String;
    .param p2, "msgType"    # Ljava/lang/String;
    .param p3, "userdata"    # Ljava/lang/String;
    .param p4, "targetid"    # Ljava/lang/String;

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/samsung/android/sdk/ppmt/content/CardAppData;->mid:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lcom/samsung/android/sdk/ppmt/content/CardAppData;->msgType:Ljava/lang/String;

    .line 12
    iput-object p3, p0, Lcom/samsung/android/sdk/ppmt/content/CardAppData;->userdata:Ljava/lang/String;

    .line 13
    iput-object p4, p0, Lcom/samsung/android/sdk/ppmt/content/CardAppData;->targetid:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method public getMid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/content/CardAppData;->mid:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/content/CardAppData;->msgType:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/content/CardAppData;->targetid:Ljava/lang/String;

    return-object v0
.end method

.method public getUserdata()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/content/CardAppData;->userdata:Ljava/lang/String;

    return-object v0
.end method
