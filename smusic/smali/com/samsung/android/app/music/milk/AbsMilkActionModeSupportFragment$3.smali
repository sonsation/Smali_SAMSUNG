.class Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment$3;
.super Ljava/lang/Object;
.source "AbsMilkActionModeSupportFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->onSelectAllModeChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment$3;->this$0:Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 175
    move-object v0, p1

    check-cast v0, Landroid/widget/CheckBox;

    .line 176
    .local v0, "cb":Landroid/widget/CheckBox;
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment$3;->this$0:Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->isSelectedAll()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment$3;->this$0:Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->onDeselectAll()V

    .line 178
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 183
    :goto_0
    return-void

    .line 180
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment$3;->this$0:Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->onSelectAll()V

    .line 181
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method
