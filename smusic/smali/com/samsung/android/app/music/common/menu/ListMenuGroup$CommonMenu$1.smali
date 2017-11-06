.class Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu$1;
.super Ljava/lang/Object;
.source "ListMenuGroup.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/CheckedItemIdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu;->performMenuAddToAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu;

    .prologue
    .line 360
    iput-object p1, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu$1;->this$1:Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(I[J)V
    .locals 1
    .param p1, "idType"    # I
        .annotation build Lcom/samsung/android/app/musiclibrary/ui/list/Id;
        .end annotation
    .end param
    .param p2, "ids"    # [J

    .prologue
    .line 363
    iget-object v0, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu$1;->this$1:Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu;

    invoke-static {v0, p2}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu;->access$1000(Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu;[J)V

    .line 364
    return-void
.end method
