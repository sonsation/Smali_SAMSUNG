.class Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$1;
.super Ljava/lang/Object;
.source "SoundPickerActivity.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$OnTabSelectedItemChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabSelectedItemChanged(I)V
    .locals 4
    .param p1, "tabId"    # I

    .prologue
    .line 175
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;

    invoke-static {v2, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->access$002(Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;I)I

    .line 178
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 179
    .local v1, "fm":Landroid/app/FragmentManager;
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->access$000(Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 180
    .local v0, "fg":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 182
    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 184
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;

    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->access$000(Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->access$100(Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;I)V

    .line 185
    return-void
.end method
