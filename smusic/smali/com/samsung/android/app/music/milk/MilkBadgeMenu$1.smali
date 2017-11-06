.class final Lcom/samsung/android/app/music/milk/MilkBadgeMenu$1;
.super Ljava/lang/Object;
.source "MilkBadgeMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/MilkBadgeMenu;->setBadgeView(Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;Landroid/view/MenuItem;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$item:Landroid/view/MenuItem;

.field final synthetic val$menu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;Landroid/view/MenuItem;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/MilkBadgeMenu$1;->val$menu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/MilkBadgeMenu$1;->val$item:Landroid/view/MenuItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/MilkBadgeMenu$1;->val$menu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/MilkBadgeMenu$1;->val$item:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 45
    return-void
.end method
