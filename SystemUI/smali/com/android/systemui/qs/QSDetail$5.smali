.class Lcom/android/systemui/qs/QSDetail$5;
.super Ljava/lang/Object;
.source "QSDetail.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QSDetail;->handleShowingDetail(Lcom/android/systemui/qs/QSTile$DetailAdapter;IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSDetail;

.field final synthetic val$adapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

.field final synthetic val$settingsIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSDetail;Lcom/android/systemui/qs/QSTile$DetailAdapter;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/QSDetail;
    .param p2, "val$adapter"    # Lcom/android/systemui/qs/QSTile$DetailAdapter;
    .param p3, "val$settingsIntent"    # Landroid/content/Intent;

    .prologue
    .line 277
    iput-object p1, p0, Lcom/android/systemui/qs/QSDetail$5;->this$0:Lcom/android/systemui/qs/QSDetail;

    iput-object p2, p0, Lcom/android/systemui/qs/QSDetail$5;->val$adapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

    iput-object p3, p0, Lcom/android/systemui/qs/QSDetail$5;->val$settingsIntent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x0

    .line 280
    iget-object v2, p0, Lcom/android/systemui/qs/QSDetail$5;->this$0:Lcom/android/systemui/qs/QSDetail;

    invoke-static {v2}, Lcom/android/systemui/qs/QSDetail;->-get0(Lcom/android/systemui/qs/QSDetail;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KnoxStateMonitor;->isDetailsSettingBlocked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 281
    iget-object v2, p0, Lcom/android/systemui/qs/QSDetail$5;->this$0:Lcom/android/systemui/qs/QSDetail;

    invoke-static {v2}, Lcom/android/systemui/qs/QSDetail;->-wrap5(Lcom/android/systemui/qs/QSDetail;)V

    .line 282
    return-void

    .line 284
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/QSDetail$5;->val$adapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

    invoke-interface {v2}, Lcom/android/systemui/qs/QSTile$DetailAdapter;->getButtonCallback()Lcom/android/systemui/qs/QSTile$DetailAdapter$ButtonCallback;

    move-result-object v1

    .line 285
    .local v1, "r":Lcom/android/systemui/qs/QSTile$DetailAdapter$ButtonCallback;
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/android/systemui/qs/QSTile$DetailAdapter$ButtonCallback;->onSettingsClicked()V

    .line 286
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/qs/QSDetail$5;->val$adapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

    invoke-interface {v2}, Lcom/android/systemui/qs/QSTile$DetailAdapter;->getSettingsIntent()Landroid/content/Intent;

    move-result-object v0

    .line 287
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_3

    .line 288
    iget-object v2, p0, Lcom/android/systemui/qs/QSDetail$5;->this$0:Lcom/android/systemui/qs/QSDetail;

    invoke-static {v2}, Lcom/android/systemui/qs/QSDetail;->-get4(Lcom/android/systemui/qs/QSDetail;)Lcom/android/systemui/statusbar/phone/QSTileHost;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->startActivityDismissingKeyguard(Landroid/content/Intent;)V

    .line 293
    :goto_0
    sget-boolean v2, Lcom/android/systemui/SystemUIRune;->SUPPORT_GSIM_LOG:Z

    if-eqz v2, :cond_2

    .line 294
    iget-object v2, p0, Lcom/android/systemui/qs/QSDetail$5;->this$0:Lcom/android/systemui/qs/QSDetail;

    invoke-static {v2}, Lcom/android/systemui/qs/QSDetail;->-get0(Lcom/android/systemui/qs/QSDetail;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "com.android.systemui.statusbar.policy.quicksetting"

    const-string/jumbo v4, "QS12"

    .line 295
    iget-object v5, p0, Lcom/android/systemui/qs/QSDetail$5;->val$adapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "DetailAdapter"

    const-string/jumbo v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 294
    invoke-static {v2, v3, v4, v5, v8}, Lcom/android/keyguard/util/GsimLogManager;->sendLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 279
    :cond_2
    return-void

    .line 290
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/qs/QSDetail$5;->this$0:Lcom/android/systemui/qs/QSDetail;

    invoke-static {v2}, Lcom/android/systemui/qs/QSDetail;->-get4(Lcom/android/systemui/qs/QSDetail;)Lcom/android/systemui/statusbar/phone/QSTileHost;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/QSDetail$5;->val$settingsIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/QSTileHost;->startActivityDismissingKeyguard(Landroid/content/Intent;)V

    goto :goto_0
.end method
