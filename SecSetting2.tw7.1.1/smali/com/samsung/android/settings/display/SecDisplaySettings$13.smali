.class Lcom/samsung/android/settings/display/SecDisplaySettings$13;
.super Landroid/database/ContentObserver;
.source "SecDisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/SecDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/SecDisplaySettings;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/display/SecDisplaySettings;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 515
    iput-object p1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$13;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 518
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$13;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 519
    const-string/jumbo v0, "Fragment"

    const-string/jumbo v1, "Detached from activity, so stopping update."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    return-void

    .line 523
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$13;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-wrap11(Lcom/samsung/android/settings/display/SecDisplaySettings;)V

    .line 524
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$13;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    const v1, 0x7f0b0283

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-wrap8(Ljava/lang/String;)V

    .line 517
    return-void
.end method
