.class Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$DummyTabFactory;
.super Ljava/lang/Object;
.source "TabController.java"

# interfaces
.implements Landroid/widget/TabHost$TabContentFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DummyTabFactory"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$DummyTabFactory;->mContext:Landroid/content/Context;

    .line 307
    return-void
.end method


# virtual methods
.method public createTabContent(Ljava/lang/String;)Landroid/view/View;
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 312
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$DummyTabFactory;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 313
    .local v0, "v":Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/view/View;->setMinimumWidth(I)V

    .line 314
    invoke-virtual {v0, v2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 315
    return-object v0
.end method
