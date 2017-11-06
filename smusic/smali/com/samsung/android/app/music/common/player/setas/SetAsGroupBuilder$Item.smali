.class public final Lcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder$Item;
.super Ljava/lang/Object;
.source "SetAsGroupBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Item"
.end annotation


# instance fields
.field private icon:Landroid/graphics/drawable/Drawable;

.field final id:I
    .annotation build Landroid/support/annotation/IdRes;
    .end annotation
.end field

.field final text1ResId:I
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field

.field final text2ResId:I
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "text1ResId"    # I
    .param p3, "text2ResId"    # I

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput p1, p0, Lcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder$Item;->id:I

    .line 127
    iput p2, p0, Lcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder$Item;->text1ResId:I

    .line 128
    iput p3, p0, Lcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder$Item;->text2ResId:I

    .line 129
    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder$Item;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder$Item;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder$Item;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method


# virtual methods
.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder$Item;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder$Item;
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder$Item;->icon:Landroid/graphics/drawable/Drawable;

    .line 133
    return-object p0
.end method
