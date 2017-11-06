.class Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl$OnLargerFontChangeObservers;
.super Lcom/samsung/android/app/musiclibrary/ui/AbstractObservers;
.source "SettingFontChangeManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnLargerFontChangeObservers"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/AbstractObservers",
        "<",
        "Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager$OnLargerFontChangeListener;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/AbstractObservers;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl$1;

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl$OnLargerFontChangeObservers;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyLargerFontChanged(I)V
    .locals 3
    .param p1, "resId"    # I

    .prologue
    .line 121
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl$OnLargerFontChangeObservers;->mObserver:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager$OnLargerFontChangeListener;

    .line 122
    .local v0, "l":Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager$OnLargerFontChangeListener;
    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager$OnLargerFontChangeListener;->onLargerFontChanged(I)V

    goto :goto_0

    .line 124
    .end local v0    # "l":Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager$OnLargerFontChangeListener;
    :cond_0
    return-void
.end method
