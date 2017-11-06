.class Lcom/samsung/android/app/music/common/menu/HeartMenu$1;
.super Ljava/lang/Object;
.source "HeartMenu.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/menu/HeartMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/menu/HeartMenu;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/menu/HeartMenu;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/menu/HeartMenu;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/samsung/android/app/music/common/menu/HeartMenu$1;->this$0:Lcom/samsung/android/app/music/common/menu/HeartMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrimaryColorChanged(I)V
    .locals 2
    .param p1, "primaryColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 121
    iget-object v0, p0, Lcom/samsung/android/app/music/common/menu/HeartMenu$1;->this$0:Lcom/samsung/android/app/music/common/menu/HeartMenu;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/menu/HeartMenu$1;->this$0:Lcom/samsung/android/app/music/common/menu/HeartMenu;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/menu/HeartMenu;->access$000(Lcom/samsung/android/app/music/common/menu/HeartMenu;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/common/menu/HeartMenu;->access$100(Lcom/samsung/android/app/music/common/menu/HeartMenu;Z)V

    .line 122
    return-void
.end method
