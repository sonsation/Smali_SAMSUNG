.class Lcom/samsung/android/app/music/common/lyrics/view/controller/HighlightFocusedItemsViewBinder$2;
.super Ljava/lang/Object;
.source "HighlightFocusedItemsViewBinder.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/lyrics/view/controller/HighlightFocusedItemsViewBinder;-><init>(Landroid/content/Context;ILcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/lyrics/view/controller/HighlightFocusedItemsViewBinder;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/lyrics/view/controller/HighlightFocusedItemsViewBinder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/lyrics/view/controller/HighlightFocusedItemsViewBinder;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/HighlightFocusedItemsViewBinder$2;->this$0:Lcom/samsung/android/app/music/common/lyrics/view/controller/HighlightFocusedItemsViewBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrimaryColorChanged(I)V
    .locals 4
    .param p1, "primaryColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 93
    iget-object v1, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/HighlightFocusedItemsViewBinder$2;->this$0:Lcom/samsung/android/app/music/common/lyrics/view/controller/HighlightFocusedItemsViewBinder;

    invoke-static {v1, p1}, Lcom/samsung/android/app/music/common/lyrics/view/controller/HighlightFocusedItemsViewBinder;->access$002(Lcom/samsung/android/app/music/common/lyrics/view/controller/HighlightFocusedItemsViewBinder;I)I

    .line 95
    const/16 v0, 0x99

    .line 96
    .local v0, "alpha":I
    iget-object v1, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/HighlightFocusedItemsViewBinder$2;->this$0:Lcom/samsung/android/app/music/common/lyrics/view/controller/HighlightFocusedItemsViewBinder;

    const/high16 v2, -0x67000000

    const v3, 0xffffff

    and-int/2addr v3, p1

    or-int/2addr v2, v3

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/common/lyrics/view/controller/HighlightFocusedItemsViewBinder;->access$102(Lcom/samsung/android/app/music/common/lyrics/view/controller/HighlightFocusedItemsViewBinder;I)I

    .line 97
    return-void
.end method
