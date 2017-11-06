.class Lcom/samsung/android/app/musiclibrary/ui/list/AbsListItemMusicMenu$2;
.super Ljava/lang/Object;
.source "AbsListItemMusicMenu.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/AbsListItemMusicMenu;->onListItemMenuSelected(Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/ui/list/AbsListItemMusicMenu;

.field final synthetic val$choiceMode:I

.field final synthetic val$recyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/AbsListItemMusicMenu;Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/ui/list/AbsListItemMusicMenu;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsListItemMusicMenu$2;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/AbsListItemMusicMenu;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsListItemMusicMenu$2;->val$recyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    iput p3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsListItemMusicMenu$2;->val$choiceMode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/widget/PopupMenu;)V
    .locals 2
    .param p1, "menu"    # Landroid/widget/PopupMenu;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsListItemMusicMenu$2;->val$recyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsListItemMusicMenu$2;->val$choiceMode:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setChoiceMode(I)V

    .line 50
    return-void
.end method
