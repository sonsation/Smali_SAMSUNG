.class Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListAdapter$1;
.super Ljava/lang/Object;
.source "ActiveKeyAppGridView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListAdapter;->createAppListInfoRow(Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListAdapter;

.field final synthetic val$row:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListAdapter;Landroid/view/View;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListAdapter;
    .param p2, "val$row"    # Landroid/view/View;

    .prologue
    .line 269
    iput-object p1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListAdapter$1;->this$1:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListAdapter;

    iput-object p2, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListAdapter$1;->val$row:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 272
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 273
    iget-object v1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListAdapter$1;->this$1:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListAdapter;

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListAdapter$1;->val$row:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListItem;

    invoke-static {v1, v0}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListAdapter;->-wrap0(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListAdapter;Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListItem;)V

    .line 271
    return-void
.end method
