.class Lcom/samsung/android/app/music/milk/store/popup/ArtistSelectPopup$2;
.super Ljava/lang/Object;
.source "ArtistSelectPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/popup/ArtistSelectPopup;->onDialogCreated(Landroid/app/Dialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/popup/ArtistSelectPopup;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/popup/ArtistSelectPopup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/popup/ArtistSelectPopup;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/popup/ArtistSelectPopup$2;->this$0:Lcom/samsung/android/app/music/milk/store/popup/ArtistSelectPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/popup/ArtistSelectPopup$2;->this$0:Lcom/samsung/android/app/music/milk/store/popup/ArtistSelectPopup;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/popup/ArtistSelectPopup;->dismiss()V

    .line 100
    return-void
.end method
