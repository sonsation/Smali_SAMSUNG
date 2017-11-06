.class final Lcom/samsung/android/app/music/support/sdl/samsung/widget/HoverPopupWindowSdlCompat$1;
.super Ljava/lang/Object;
.source "HoverPopupWindowSdlCompat.java"

# interfaces
.implements Landroid/widget/HoverPopupWindow$HoverPopupListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/support/sdl/samsung/widget/HoverPopupWindowSdlCompat;->setHoverPopupListener(Landroid/view/View;Lcom/samsung/android/app/music/support/sdl/samsung/widget/HoverPopupWindowSdlCompat$HoverPopupListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/samsung/android/app/music/support/sdl/samsung/widget/HoverPopupWindowSdlCompat$HoverPopupListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/support/sdl/samsung/widget/HoverPopupWindowSdlCompat$HoverPopupListener;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/widget/HoverPopupWindowSdlCompat$1;->val$listener:Lcom/samsung/android/app/music/support/sdl/samsung/widget/HoverPopupWindowSdlCompat$HoverPopupListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSetContentView(Landroid/view/View;Landroid/widget/HoverPopupWindow;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "hoverPopupWindow"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/widget/HoverPopupWindowSdlCompat$1;->val$listener:Lcom/samsung/android/app/music/support/sdl/samsung/widget/HoverPopupWindowSdlCompat$HoverPopupListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/support/sdl/samsung/widget/HoverPopupWindowSdlCompat$HoverPopupListener;->onSetContentView(Landroid/view/View;)Z

    move-result v0

    return v0
.end method
