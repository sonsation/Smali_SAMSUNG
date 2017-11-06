.class Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$ViewHolder;
.super Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
.source "TabSettingReorderFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field checkBox:Landroid/widget/CheckBox;

.field reorderView:Landroid/widget/ImageView;

.field textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 340
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 341
    const v0, 0x7f12015a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    .line 342
    const v0, 0x7f120078

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$ViewHolder;->textView:Landroid/widget/TextView;

    .line 343
    const v0, 0x7f12015b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$ViewHolder;->reorderView:Landroid/widget/ImageView;

    .line 344
    return-void
.end method
