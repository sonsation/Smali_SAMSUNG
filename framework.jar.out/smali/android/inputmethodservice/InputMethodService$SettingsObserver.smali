.class final Landroid/inputmethodservice/InputMethodService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "InputMethodService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/InputMethodService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final mService:Landroid/inputmethodservice/InputMethodService;

.field private mShowImeWithHardKeyboard:I


# direct methods
.method static synthetic -wrap0(Landroid/inputmethodservice/InputMethodService$SettingsObserver;)Z
    .locals 1

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->shouldShowImeWithHardKeyboard()Z

    move-result v0

    return v0
.end method

.method private constructor <init>(Landroid/inputmethodservice/InputMethodService;)V
    .locals 2
    .param p1, "service"    # Landroid/inputmethodservice/InputMethodService;

    .prologue
    .line 938
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/inputmethodservice/InputMethodService;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 933
    const/4 v0, 0x0

    iput v0, p0, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->mShowImeWithHardKeyboard:I

    .line 939
    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->mService:Landroid/inputmethodservice/InputMethodService;

    .line 937
    return-void
.end method

.method public static createAndRegister(Landroid/inputmethodservice/InputMethodService;)Landroid/inputmethodservice/InputMethodService$SettingsObserver;
    .locals 4
    .param p0, "service"    # Landroid/inputmethodservice/InputMethodService;

    .prologue
    const/4 v3, 0x0

    .line 955
    new-instance v0, Landroid/inputmethodservice/InputMethodService$SettingsObserver;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/InputMethodService$SettingsObserver;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    .line 957
    .local v0, "observer":Landroid/inputmethodservice/InputMethodService$SettingsObserver;
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 958
    const-string/jumbo v2, "show_ime_with_hard_keyboard"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 957
    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 962
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 963
    const-string/jumbo v2, "navigationbar_current_color"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 962
    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 965
    return-object v0
.end method

.method private shouldShowImeWithHardKeyboard()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 974
    iget v1, p0, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->mShowImeWithHardKeyboard:I

    if-nez v1, :cond_1

    .line 976
    const/4 v0, 0x1

    .line 977
    .local v0, "defaultValue":I
    invoke-static {}, Landroid/inputmethodservice/InputMethodService;->-get0()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 978
    const/4 v0, 0x0

    .line 980
    :cond_0
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->mService:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v1}, Landroid/inputmethodservice/InputMethodService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 981
    const-string/jumbo v3, "show_ime_with_hard_keyboard"

    .line 980
    invoke-static {v1, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_2

    .line 982
    const/4 v1, 0x2

    .line 980
    :goto_0
    iput v1, p0, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->mShowImeWithHardKeyboard:I

    .line 989
    .end local v0    # "defaultValue":I
    :cond_1
    iget v1, p0, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->mShowImeWithHardKeyboard:I

    packed-switch v1, :pswitch_data_0

    .line 995
    const-string/jumbo v1, "InputMethodService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unexpected mShowImeWithHardKeyboard="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->mShowImeWithHardKeyboard:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    return v4

    .restart local v0    # "defaultValue":I
    :cond_2
    move v1, v2

    .line 982
    goto :goto_0

    .line 991
    .end local v0    # "defaultValue":I
    :pswitch_0
    return v2

    .line 993
    :pswitch_1
    return v4

    .line 989
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 6
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v5, 0x0

    .line 1002
    const-string/jumbo v2, "InputMethodService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Settings on Change uri :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    const-string/jumbo v2, "show_ime_with_hard_keyboard"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1007
    .local v1, "showImeWithHardKeyboardUri":Landroid/net/Uri;
    const-string/jumbo v2, "navigationbar_current_color"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1009
    .local v0, "navigationBarCurrentColorUri":Landroid/net/Uri;
    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1010
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->mService:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v2}, Landroid/inputmethodservice/InputMethodService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1011
    const-string/jumbo v3, "show_ime_with_hard_keyboard"

    .line 1010
    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    .line 1012
    const/4 v2, 0x2

    .line 1010
    :goto_0
    iput v2, p0, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->mShowImeWithHardKeyboard:I

    .line 1023
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->mService:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v2}, Landroid/inputmethodservice/InputMethodService;->-wrap7(Landroid/inputmethodservice/InputMethodService;)V

    .line 1001
    :cond_0
    :goto_1
    return-void

    .line 1012
    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 1025
    :cond_2
    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1026
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->mService:Landroid/inputmethodservice/InputMethodService;

    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->mService:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v2, v3}, Landroid/inputmethodservice/InputMethodService;->-wrap8(Landroid/inputmethodservice/InputMethodService;Landroid/inputmethodservice/InputMethodService;)V

    .line 1027
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->mService:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v2}, Landroid/inputmethodservice/InputMethodService;->-wrap7(Landroid/inputmethodservice/InputMethodService;)V

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1033
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SettingsObserver{mShowImeWithHardKeyboard="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->mShowImeWithHardKeyboard:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method unregister()V
    .locals 1

    .prologue
    .line 969
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->mService:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 968
    return-void
.end method
