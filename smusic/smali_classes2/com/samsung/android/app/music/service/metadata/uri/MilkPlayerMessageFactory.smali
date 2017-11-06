.class public final Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory;
.super Ljava/lang/Object;
.source "MilkPlayerMessageFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory$ServerErrorMessage;,
        Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory$ExplicitMessage;,
        Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory$RadioPlayingLimitOverMessage;,
        Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory$TicketMessage;,
        Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory$LoginMessage;,
        Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory$DefaultMessage;,
        Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory$BaseMilkPlayerMessage;,
        Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory$ResultType;
    }
.end annotation


# static fields
.field public static final EXPLICIT_POPUP:Ljava/lang/String; = "explicit_popup"

.field private static final EXTRA_ACTION_CODE:Ljava/lang/String; = "extra_action_code"

.field private static final EXTRA_RESULT_CODE:Ljava/lang/String; = "extra_result_code"

.field public static final UPSELL_POPUP:Ljava/lang/String; = "upsell_popup"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createMessage(Landroid/os/Bundle;ILjava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .param p0, "data"    # Landroid/os/Bundle;
    .param p1, "resultCode"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 87
    const-string v0, "extra_result_code"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 88
    sparse-switch p1, :sswitch_data_0

    .line 115
    invoke-static {p0, p2}, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory$DefaultMessage;->build(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    :goto_0
    return-object v0

    .line 90
    :sswitch_0
    invoke-static {p0}, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory$LoginMessage;->build(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 92
    :sswitch_1
    invoke-static {p0}, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory$TicketMessage;->build(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 94
    :sswitch_2
    invoke-static {p0, p2}, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory$RadioPlayingLimitOverMessage;->build(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 100
    :sswitch_3
    invoke-static {p0, p2, p1}, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory$ExplicitMessage;->build(Landroid/os/Bundle;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 113
    :sswitch_4
    invoke-static {p0, p2, p1}, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory$ServerErrorMessage;->build(Landroid/os/Bundle;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 88
    :sswitch_data_0
    .sparse-switch
        -0x3 -> :sswitch_4
        -0x2 -> :sswitch_4
        0x3 -> :sswitch_4
        0xfa0 -> :sswitch_4
        0x1005 -> :sswitch_4
        0x1006 -> :sswitch_4
        0x1389 -> :sswitch_4
        0x138a -> :sswitch_4
        0x138b -> :sswitch_4
        0x138c -> :sswitch_4
        0x138d -> :sswitch_4
        0x13ec -> :sswitch_4
        0x2711 -> :sswitch_3
        0x2712 -> :sswitch_3
        0x2715 -> :sswitch_3
        0x2716 -> :sswitch_3
        0x2717 -> :sswitch_3
        0x2af8 -> :sswitch_0
        0x2ee0 -> :sswitch_1
        0x36b0 -> :sswitch_2
    .end sparse-switch
.end method

.method public static obtainMessage(Landroid/app/Activity;Landroid/os/Bundle;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 123
    const-string v1, "extra_result_code"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 124
    .local v0, "resultCode":I
    sparse-switch v0, :sswitch_data_0

    .line 151
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory$DefaultMessage;->obtain(Landroid/app/Activity;Landroid/os/Bundle;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;

    move-result-object v1

    :goto_0
    return-object v1

    .line 126
    :sswitch_0
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory$LoginMessage;->obtain(Landroid/app/Activity;Landroid/os/Bundle;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;

    move-result-object v1

    goto :goto_0

    .line 128
    :sswitch_1
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory$TicketMessage;->obtain(Landroid/app/Activity;Landroid/os/Bundle;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;

    move-result-object v1

    goto :goto_0

    .line 130
    :sswitch_2
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory$RadioPlayingLimitOverMessage;->obtain(Landroid/app/Activity;Landroid/os/Bundle;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;

    move-result-object v1

    goto :goto_0

    .line 136
    :sswitch_3
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory$ExplicitMessage;->obtain(Landroid/app/Activity;Landroid/os/Bundle;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;

    move-result-object v1

    goto :goto_0

    .line 149
    :sswitch_4
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory$ServerErrorMessage;->obtain(Landroid/app/Activity;Landroid/os/Bundle;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;

    move-result-object v1

    goto :goto_0

    .line 124
    nop

    :sswitch_data_0
    .sparse-switch
        -0x3 -> :sswitch_4
        -0x2 -> :sswitch_4
        0x3 -> :sswitch_4
        0xfa0 -> :sswitch_4
        0x1005 -> :sswitch_4
        0x1006 -> :sswitch_4
        0x1389 -> :sswitch_4
        0x138a -> :sswitch_4
        0x138b -> :sswitch_4
        0x138c -> :sswitch_4
        0x138d -> :sswitch_4
        0x13ec -> :sswitch_4
        0x2711 -> :sswitch_3
        0x2712 -> :sswitch_3
        0x2715 -> :sswitch_3
        0x2716 -> :sswitch_3
        0x2717 -> :sswitch_3
        0x2af8 -> :sswitch_0
        0x2ee0 -> :sswitch_1
        0x36b0 -> :sswitch_2
    .end sparse-switch
.end method
