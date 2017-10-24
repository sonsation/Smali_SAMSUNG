.class Lcom/android/internal/app/ResolverActivity$MoreActionsItemClickListener;
.super Ljava/lang/Object;
.source "ResolverActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MoreActionsItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ResolverActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ResolverActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 3220
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$MoreActionsItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 3224
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$MoreActionsItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity;->-get11(Lcom/android/internal/app/ResolverActivity;)Lcom/samsung/android/share/SShareMoreActions;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3225
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$MoreActionsItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity;->-get11(Lcom/android/internal/app/ResolverActivity;)Lcom/samsung/android/share/SShareMoreActions;

    move-result-object v1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$MoreActionsItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity;->-get7(Lcom/android/internal/app/ResolverActivity;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$MoreActionsItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v2}, Lcom/android/internal/app/ResolverActivity;->-get29(Lcom/android/internal/app/ResolverActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, p3, v0, v2}, Lcom/samsung/android/share/SShareMoreActions;->startMoreActions(ILandroid/content/Intent;Landroid/view/View;)V

    .line 3227
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$MoreActionsItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 3223
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 3232
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v0, 0x1

    return v0
.end method
