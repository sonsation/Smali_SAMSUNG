.class public Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/ButtonEmptyViewCreator$ButtonItem;
.super Ljava/lang/Object;
.source "ButtonEmptyViewCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/ButtonEmptyViewCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ButtonItem"
.end annotation


# instance fields
.field private final onClickListener:Landroid/view/View$OnClickListener;

.field private final resId:I
    .annotation build Landroid/support/annotation/IdRes;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILandroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .param p2, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/ButtonEmptyViewCreator$ButtonItem;->resId:I

    .line 47
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/ButtonEmptyViewCreator$ButtonItem;->onClickListener:Landroid/view/View$OnClickListener;

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/ButtonEmptyViewCreator$ButtonItem;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/ButtonEmptyViewCreator$ButtonItem;

    .prologue
    .line 39
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/ButtonEmptyViewCreator$ButtonItem;->resId:I

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/ButtonEmptyViewCreator$ButtonItem;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/ButtonEmptyViewCreator$ButtonItem;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/ButtonEmptyViewCreator$ButtonItem;->onClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method
