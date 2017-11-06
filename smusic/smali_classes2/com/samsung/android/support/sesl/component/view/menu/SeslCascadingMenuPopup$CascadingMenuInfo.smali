.class Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$CascadingMenuInfo;
.super Ljava/lang/Object;
.source "SeslCascadingMenuPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CascadingMenuInfo"
.end annotation


# instance fields
.field public final menu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

.field public final position:I

.field public final window:Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow;Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;I)V
    .locals 0
    .param p1, "window"    # Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "menu"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "position"    # I

    .prologue
    .line 739
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 740
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$CascadingMenuInfo;->window:Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow;

    .line 741
    iput-object p2, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$CascadingMenuInfo;->menu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    .line 742
    iput p3, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$CascadingMenuInfo;->position:I

    .line 743
    return-void
.end method


# virtual methods
.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 746
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$CascadingMenuInfo;->window:Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method
