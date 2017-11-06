.class Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu$ViewHolder;
.super Ljava/lang/Object;
.source "DialListPopupMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field header:Landroid/view/View;

.field menuItem:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "header"    # Landroid/view/View;
    .param p2, "menu"    # Landroid/view/View;

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu$ViewHolder;->header:Landroid/view/View;

    .line 168
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/DialListPopupMenu$ViewHolder;->menuItem:Landroid/view/View;

    .line 169
    return-void
.end method
