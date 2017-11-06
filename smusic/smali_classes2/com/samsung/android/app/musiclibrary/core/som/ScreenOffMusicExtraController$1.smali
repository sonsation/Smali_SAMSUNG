.class Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicExtraController$1;
.super Ljava/lang/Object;
.source "ScreenOffMusicExtraController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicExtraController;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicExtraController$OnControllerClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicExtraController;

.field final synthetic val$listener:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicExtraController$OnControllerClickListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicExtraController;Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicExtraController$OnControllerClickListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicExtraController;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicExtraController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicExtraController;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicExtraController$1;->val$listener:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicExtraController$OnControllerClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicExtraController$1;->val$listener:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicExtraController$OnControllerClickListener;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicExtraController$OnControllerClickListener;->onCloseClick()V

    .line 28
    return-void
.end method
