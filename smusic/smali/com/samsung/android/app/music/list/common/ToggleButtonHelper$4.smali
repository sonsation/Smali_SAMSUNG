.class Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$4;
.super Ljava/lang/Object;
.source "ToggleButtonHelper.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$4;->this$0:Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrimaryColorChanged(I)V
    .locals 1
    .param p1, "primaryColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 218
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$4;->this$0:Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->access$1302(Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;I)I

    .line 219
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper$4;->this$0:Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;->access$900(Lcom/samsung/android/app/music/list/common/ToggleButtonHelper;)V

    .line 220
    return-void
.end method
