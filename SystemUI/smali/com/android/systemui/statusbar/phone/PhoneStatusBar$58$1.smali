.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$58$1;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardHostView$OnDismissAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar$58;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$58;

.field final synthetic val$isDetail:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$58;Z)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar$58;
    .param p2, "val$isDetail"    # Z

    .prologue
    .line 5247
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$58$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$58;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$58$1;->val$isDetail:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 5250
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$58$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$58;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$58;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get0(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/qs/QSTile;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5251
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$58$1;->val$isDetail:Z

    if-eqz v1, :cond_2

    .line 5252
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$58$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$58;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$58;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get0(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/qs/QSTile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSTile;->getDetailAdapter()Lcom/android/systemui/qs/QSTile$DetailAdapter;

    move-result-object v0

    .line 5253
    .local v0, "da":Lcom/android/systemui/qs/QSTile$DetailAdapter;
    if-eqz v0, :cond_0

    .line 5254
    invoke-interface {v0}, Lcom/android/systemui/qs/QSTile$DetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    invoke-interface {v0, v1}, Lcom/android/systemui/qs/QSTile$DetailAdapter;->setToggleState(Z)Z

    .line 5261
    .end local v0    # "da":Lcom/android/systemui/qs/QSTile$DetailAdapter;
    :cond_0
    :goto_1
    return v2

    .line 5254
    .restart local v0    # "da":Lcom/android/systemui/qs/QSTile$DetailAdapter;
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 5257
    .end local v0    # "da":Lcom/android/systemui/qs/QSTile$DetailAdapter;
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$58$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$58;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$58;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get0(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/qs/QSTile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSTile;->click()V

    .line 5258
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$58$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$58;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$58;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v1, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-set0(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Lcom/android/systemui/qs/QSTile;)Lcom/android/systemui/qs/QSTile;

    goto :goto_1
.end method
