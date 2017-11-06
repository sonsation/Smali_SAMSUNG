.class Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper$2;
.super Landroid/widget/ArrayAdapter;
.source "SpinnerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper;->setDropDownItems([I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper;Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper;
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # I

    .prologue
    .line 82
    .local p4, "x2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper$2;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "parent"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 87
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 88
    .local v0, "item":Landroid/view/View;
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper$2;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper;->access$100(Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper;)[Z

    move-result-object v1

    aget-boolean v1, v1, p1

    if-eqz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 89
    return-object v0

    .line 88
    :cond_0
    const v1, 0x3ebd70a4    # 0.37f

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 94
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper$2;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper;->access$100(Lcom/samsung/android/app/musiclibrary/ui/list/SpinnerHelper;)[Z

    move-result-object v0

    aget-boolean v0, v0, p1

    return v0
.end method
