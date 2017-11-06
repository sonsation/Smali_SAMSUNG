.class Lcom/mapps/android/view/AdVideoPlayer$10;
.super Ljava/lang/Object;
.source "AdVideoPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/AdVideoPlayer;->setLoaction(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/AdVideoPlayer;

.field private final synthetic val$b:Z


# direct methods
.method constructor <init>(Lcom/mapps/android/view/AdVideoPlayer;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer$10;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iput-boolean p2, p0, Lcom/mapps/android/view/AdVideoPlayer$10;->val$b:Z

    .line 471
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 475
    iget-boolean v1, p0, Lcom/mapps/android/view/AdVideoPlayer$10;->val$b:Z

    if-eqz v1, :cond_0

    const-string v0, "1"

    .line 476
    .local v0, "flag":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/mapps/android/share/ShareUtil;->getInstance()Lcom/mapps/android/share/ShareUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer$10;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v2}, Lcom/mapps/android/view/AdVideoPlayer;->access$0(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "Loaction"

    const-string v4, "Loaction"

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/mapps/android/share/ShareUtil;->savePreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    return-void

    .line 475
    .end local v0    # "flag":Ljava/lang/String;
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method
