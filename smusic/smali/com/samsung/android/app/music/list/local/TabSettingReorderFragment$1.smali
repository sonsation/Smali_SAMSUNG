.class Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$1;
.super Ljava/lang/Object;
.source "TabSettingReorderFragment.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager$OnLargerFontChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$1;->this$0:Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLargerFontChanged(I)V
    .locals 1
    .param p1, "fontResId"    # I

    .prologue
    .line 164
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$1;->this$0:Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;->access$000(Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;)Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter;->setLargerFontSizeId(I)V

    .line 165
    return-void
.end method
