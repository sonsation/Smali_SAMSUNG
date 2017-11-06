.class Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$5;
.super Ljava/lang/Object;
.source "ToggleButtonHelper.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$5;->this$0:Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onListActionModeFinished(Landroid/view/ActionMode;)V
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    const/4 v1, 0x1

    .line 238
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$5;->this$0:Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->access$1400(Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 239
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$5;->this$0:Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->access$1500(Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 240
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$5;->this$0:Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->access$1600(Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 241
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$5;->this$0:Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->access$1700(Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$5;->this$0:Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->access$1700(Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$5;->this$0:Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->access$1400(Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 245
    return-void
.end method

.method public onListActionModeStarted(Landroid/view/ActionMode;)V
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    const/4 v1, 0x0

    .line 227
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$5;->this$0:Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->access$1400(Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 228
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$5;->this$0:Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->access$1500(Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 229
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$5;->this$0:Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->access$1600(Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 230
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$5;->this$0:Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->access$1700(Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$5;->this$0:Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->access$1700(Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$5;->this$0:Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->access$1400(Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;)Landroid/view/View;

    move-result-object v0

    const v1, 0x3ebd70a4    # 0.37f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 234
    return-void
.end method
