.class Lcom/samsung/android/app/music/bixby/executor/globalmenu/LaunchPurchasedTrackExecutor$1;
.super Ljava/lang/Object;
.source "LaunchPurchasedTrackExecutor.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager$OnUserConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/bixby/executor/globalmenu/LaunchPurchasedTrackExecutor;->execute(Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/bixby/executor/globalmenu/LaunchPurchasedTrackExecutor;

.field final synthetic val$command:Lcom/samsung/android/app/musiclibrary/core/bixby/Command;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/executor/globalmenu/LaunchPurchasedTrackExecutor;Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/bixby/executor/globalmenu/LaunchPurchasedTrackExecutor;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/executor/globalmenu/LaunchPurchasedTrackExecutor$1;->this$0:Lcom/samsung/android/app/music/bixby/executor/globalmenu/LaunchPurchasedTrackExecutor;

    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/executor/globalmenu/LaunchPurchasedTrackExecutor$1;->val$command:Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPositiveReceived()V
    .locals 2

    .prologue
    .line 56
    const-string v0, "LaunchSubscriptionExecutor"

    const-string/jumbo v1, "onPositiveReceived()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->setMyMusicMode(Z)V

    .line 58
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/globalmenu/LaunchPurchasedTrackExecutor$1;->this$0:Lcom/samsung/android/app/music/bixby/executor/globalmenu/LaunchPurchasedTrackExecutor;

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/globalmenu/LaunchPurchasedTrackExecutor$1;->val$command:Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/bixby/executor/globalmenu/LaunchPurchasedTrackExecutor;->access$000(Lcom/samsung/android/app/music/bixby/executor/globalmenu/LaunchPurchasedTrackExecutor;Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)V

    .line 59
    return-void
.end method
