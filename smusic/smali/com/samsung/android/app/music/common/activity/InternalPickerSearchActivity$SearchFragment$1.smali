.class Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity$SearchFragment$1;
.super Ljava/lang/Object;
.source "InternalPickerSearchActivity.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity$SearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity$SearchFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity$SearchFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity$SearchFragment;

    .prologue
    .line 484
    iput-object p1, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity$SearchFragment$1;->this$0:Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity$SearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrimaryColorChanged(I)V
    .locals 1
    .param p1, "primaryColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 488
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity$SearchFragment$1;->this$0:Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity$SearchFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity$SearchFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$SearchAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$SearchAdapter;->updateMatchedColor(I)V

    .line 489
    return-void
.end method
