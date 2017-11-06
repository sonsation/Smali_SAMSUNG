.class Lcom/mapps/android/view/AdVideoPlayer$7;
.super Ljava/lang/Object;
.source "AdVideoPlayer.java"

# interfaces
.implements Lcom/mapps/android/share/ShareUtil$OnAdvertisingIdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/AdVideoPlayer;->showAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/AdVideoPlayer;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/AdVideoPlayer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer$7;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/mapps/android/view/AdVideoPlayer$7;)Lcom/mapps/android/view/AdVideoPlayer;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer$7;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    return-object v0
.end method


# virtual methods
.method public onAdvertisingId(Ljava/lang/String;)V
    .locals 9
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 206
    invoke-static {}, Lcom/mapps/android/share/ShareUtil;->getInstance()Lcom/mapps/android/share/ShareUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer$7;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v1}, Lcom/mapps/android/view/AdVideoPlayer;->access$0(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer$7;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v2}, Lcom/mapps/android/view/AdVideoPlayer;->access$10(Lcom/mapps/android/view/AdVideoPlayer;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mapps/android/view/AdVideoPlayer$7;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v3}, Lcom/mapps/android/view/AdVideoPlayer;->access$11(Lcom/mapps/android/view/AdVideoPlayer;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mapps/android/view/AdVideoPlayer$7;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v4}, Lcom/mapps/android/view/AdVideoPlayer;->access$12(Lcom/mapps/android/view/AdVideoPlayer;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const-string v7, "java"

    new-instance v8, Lcom/mapps/android/view/AdVideoPlayer$7$1;

    invoke-direct {v8, p0}, Lcom/mapps/android/view/AdVideoPlayer$7$1;-><init>(Lcom/mapps/android/view/AdVideoPlayer$7;)V

    invoke-virtual/range {v0 .. v8}, Lcom/mapps/android/share/ShareUtil;->setAdViewCode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/mapps/android/share/ShareUtil$AdViewCodeCompleteListener;)V

    .line 214
    return-void
.end method
