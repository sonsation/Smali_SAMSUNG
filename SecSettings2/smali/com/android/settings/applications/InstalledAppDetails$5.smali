.class Lcom/android/settings/applications/InstalledAppDetails$5;
.super Ljava/lang/Object;
.source "InstalledAppDetails.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/InstalledAppDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/InstalledAppDetails;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/InstalledAppDetails;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/applications/InstalledAppDetails;

    .prologue
    .line 2034
    iput-object p1, p0, Lcom/android/settings/applications/InstalledAppDetails$5;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 4

    .prologue
    .line 2037
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails$5;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-static {v1}, Lcom/android/settings/applications/InstalledAppDetails;->-get4(Lcom/android/settings/applications/InstalledAppDetails;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v0

    .line 2038
    .local v0, "stateId":Ljava/lang/String;
    sget-object v1, Lcom/samsung/android/settings/applications/EmHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onStateReceived) stateId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2039
    invoke-static {}, Lcom/android/settings/applications/InstalledAppDetails;->-get3()Lcom/samsung/android/settings/applications/EmHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2040
    invoke-static {}, Lcom/android/settings/applications/InstalledAppDetails;->-get3()Lcom/samsung/android/settings/applications/EmHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/applications/EmHandler;->setStateId(Ljava/lang/String;)V

    .line 2041
    invoke-static {}, Lcom/android/settings/applications/InstalledAppDetails;->-get3()Lcom/samsung/android/settings/applications/EmHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/applications/EmHandler;->startAction()V

    .line 2043
    :cond_0
    return-void
.end method
