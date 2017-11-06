.class Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper$3;
.super Ljava/lang/Object;
.source "SpinnerHelper.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper;->setDropDownItems([I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper;

.field final synthetic val$itemTextIds:[I


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper;[I)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper$3;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper$3;->val$itemTextIds:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 105
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper$3;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper;

    invoke-static {v0, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper;->access$202(Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper;I)I

    .line 107
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper$3;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper;->access$300(Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper;)Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper$OnItemSelectedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper$3;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper;->access$300(Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper;)Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper$OnItemSelectedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper$3;->val$itemTextIds:[I

    aget v1, v1, p3

    invoke-interface {v0, p3, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper$OnItemSelectedListener;->onItemSelected(II)V

    .line 110
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 114
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
