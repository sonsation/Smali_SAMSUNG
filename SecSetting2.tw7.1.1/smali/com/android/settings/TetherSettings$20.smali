.class Lcom/android/settings/TetherSettings$20;
.super Ljava/lang/Object;
.source "TetherSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/TetherSettings;->setUsbTethering(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/TetherSettings;

.field final synthetic val$mEnable:Z


# direct methods
.method constructor <init>(Lcom/android/settings/TetherSettings;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/TetherSettings;
    .param p2, "val$mEnable"    # Z

    .prologue
    .line 2110
    iput-object p1, p0, Lcom/android/settings/TetherSettings$20;->this$0:Lcom/android/settings/TetherSettings;

    iput-boolean p2, p0, Lcom/android/settings/TetherSettings$20;->val$mEnable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2113
    iget-object v0, p0, Lcom/android/settings/TetherSettings$20;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v0}, Lcom/android/settings/TetherSettings;->-get6(Lcom/android/settings/TetherSettings;)Landroid/content/Context;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/TetherSettings$20;->val$mEnable:Z

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->checkWifiPreCondition(Landroid/content/Context;Z)V

    .line 2112
    return-void
.end method
