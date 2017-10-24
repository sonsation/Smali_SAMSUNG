.class Lcom/android/systemui/qs/customize/TileAdapter$6;
.super Ljava/lang/Object;
.source "TileAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/customize/TileAdapter;->showAccessibilityDialog(ILandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/customize/TileAdapter;

.field final synthetic val$info:Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

.field final synthetic val$position:I

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/customize/TileAdapter;ILcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/customize/TileAdapter;
    .param p2, "val$position"    # I
    .param p3, "val$info"    # Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;
    .param p4, "val$v"    # Landroid/view/View;

    .prologue
    .line 346
    iput-object p1, p0, Lcom/android/systemui/qs/customize/TileAdapter$6;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    iput p2, p0, Lcom/android/systemui/qs/customize/TileAdapter$6;->val$position:I

    iput-object p3, p0, Lcom/android/systemui/qs/customize/TileAdapter$6;->val$info:Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    iput-object p4, p0, Lcom/android/systemui/qs/customize/TileAdapter$6;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 349
    if-nez p2, :cond_0

    .line 350
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter$6;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    iget v1, p0, Lcom/android/systemui/qs/customize/TileAdapter$6;->val$position:I

    invoke-static {v0, v1}, Lcom/android/systemui/qs/customize/TileAdapter;->-wrap3(Lcom/android/systemui/qs/customize/TileAdapter;I)V

    .line 348
    :goto_0
    return-void

    .line 352
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileAdapter$6;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    iget v2, p0, Lcom/android/systemui/qs/customize/TileAdapter$6;->val$position:I

    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter$6;->val$info:Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    iget-boolean v0, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->isSystem:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter$6;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/TileAdapter;->-get3(Lcom/android/systemui/qs/customize/TileAdapter;)I

    move-result v0

    :goto_1
    iget-object v3, p0, Lcom/android/systemui/qs/customize/TileAdapter$6;->val$v:Landroid/view/View;

    invoke-static {v1, v2, v0, v3}, Lcom/android/systemui/qs/customize/TileAdapter;->-wrap0(Lcom/android/systemui/qs/customize/TileAdapter;IILandroid/view/View;)Z

    .line 353
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter$6;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileAdapter$6;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-static {v1}, Lcom/android/systemui/qs/customize/TileAdapter;->-get5(Lcom/android/systemui/qs/customize/TileAdapter;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/TileAdapter;->notifyItemChanged(I)V

    .line 354
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter$6;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/TileAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 352
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter$6;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/TileAdapter;->-get5(Lcom/android/systemui/qs/customize/TileAdapter;)I

    move-result v0

    goto :goto_1
.end method
