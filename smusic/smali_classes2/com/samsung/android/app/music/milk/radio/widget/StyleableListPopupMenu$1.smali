.class Lcom/samsung/android/app/music/milk/radio/widget/StyleableListPopupMenu$1;
.super Ljava/lang/Object;
.source "StyleableListPopupMenu.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/radio/widget/StyleableListPopupMenu;->init()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/radio/widget/StyleableListPopupMenu;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/radio/widget/StyleableListPopupMenu;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/radio/widget/StyleableListPopupMenu;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/widget/StyleableListPopupMenu$1;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/StyleableListPopupMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    .line 78
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/StyleableListPopupMenu$1;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/StyleableListPopupMenu;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/widget/StyleableListPopupMenu;->dismiss()V

    .line 80
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/StyleableListPopupMenu$1;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/StyleableListPopupMenu;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/radio/widget/StyleableListPopupMenu;->mItemClickLstnr:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/StyleableListPopupMenu$1;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/StyleableListPopupMenu;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/radio/widget/StyleableListPopupMenu;->mItemClickLstnr:Landroid/widget/AdapterView$OnItemClickListener;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 83
    :cond_0
    return-void
.end method
