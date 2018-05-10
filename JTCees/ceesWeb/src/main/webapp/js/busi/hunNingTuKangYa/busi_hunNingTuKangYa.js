/**
 * 混凝土抗压jq 表格
 * Created by 啊Q on 2018-05-02.
 */

$(function () {
    loadGrid();
    query();
    $('#addWindow').jqm({
        closeClass: 'jqmClose',
        overlayClass: 'whiteOverlay',
        retrieveTop: function () {
            return 150;
        },
        movable: true
    });
});

/**
 *  异常数据列表
 */
function loadGrid() {
    $('#ordertable').datagrid({
        height: 320,
        nowrap: true,
        collapsible: true,
        striped: true,
        url: null,
        idField: 'id',
        sortOrder: 'desc',
        remoteSort: true,
        loadMsg: '数据加载中......',
        columns: [[
            {field: 'kyid', title: '抗压id', width: 80},
            {field: 'cid', title: '施工单位id', width: 80},
            {field: 'cnumber', title: '施工单位编号', width: 80},
            {field: 'pid', title: '工程项目id', width: 80},
            {field: 'projectnumber', title: '工程编号', width: 80},
            {field: 'client', title: '送检人(委托人)', width: 80},
            {field: 'ccid', title: '混凝土单位id', width: 80},
            {field: 'kynumber', title: '抗压编号', width: 80},
            {field: 'testnumber', title: '送检编号', width: 80},
            {field: 'sn', title: '序号', width: 80},
            {field: 'sn_project', title: '工程明细序号/工程抗压序号', width: 80},
            {field: 'sn_test', title: '送检单明细序号/提交序号', width: 80},
            {field: 'state', title: '状态', width: 80},
            {field: 'remarks', title: '备注', width: 80},
            {field: 'edittime', title: '编辑时间', width: 80},
            {field: 'edituser', title: '用户名', width: 80},
            {field: 'readmark', title: '已读标志', width: 80},
            {field: 'readtime', title: '已读时间', width: 80},
            {field: 'HNTDW', title: '混凝土单位', width: 80},
            {field: 'JSFZRBH', title: '', width: 80},
            {field: 'CHLYL', title: '', width: 80},
            {field: 'HZ3', title: '', width: 80},
            {field: 'SHASYBH', title: '', width: 80},
            {field: 'PZJMC', title: '', width: 80},
            {field: 'CHLMC', title: '', width: 80},
            {field: 'QFBZ', title: '', width: 80},
            {field: 'SYJG', title: '', width: 80},
            {field: 'YQTLD', title: '', width: 80},
            {field: 'GCBH', title: '', width: 80},
            {field: 'WJJYL', title: '', width: 80},
            {field: 'SYXMMC', title: '', width: 80},
            {field: 'SHIZDLJ', title: '', width: 80},
            {field: 'SYL', title: '', width: 80},
            {field: 'ZHQD', title: '', width: 80},
            {field: 'JLBBH', title: '', width: 80},
            {field: 'XHR', title: '', width: 80},
            {field: 'FMHMC', title: '', width: 80},
            {field: 'SNBH', title: '', width: 80},
            {field: 'PZJZYSNL', title: '', width: 80},
            {field: 'SYMJ', title: '', width: 80},
            {field: 'ZXBZ', title: '', width: 80},
            {field: 'SGBW', title: '', width: 80},
            {field: 'YQSYRQ', title: '', width: 80},
            {field: 'WTDWBH', title: '', width: 80},
            {field: 'SHIHNL', title: '', width: 80},
            {field: 'SHAYL', title: '', width: 80},
            {field: 'DDQD', title: '', width: 80},
            {field: 'SYRBH', title: '', width: 80},
            {field: 'SHAXDMS', title: '', width: 80},
            {field: 'FMHCD', title: '', width: 80},
            {field: 'SYWTR', title: '', width: 80},
            {field: 'JZBZ', title: '', width: 80},
            {field: 'WJJCL', title: '', width: 80},
            {field: 'SNSYBH', title: '', width: 80},
            {field: 'HZ1', title: '', width: 80},
            {field: 'WTDBH', title: '', width: 80},
            {field: 'SJQD', title: '', width: 80},
            {field: 'PHBBH', title: '', width: 80},
            {field: 'FMHYL', title: '', width: 80},
            {field: 'HZPJ', title: '', width: 80},
            {field: 'SHICD', title: '', width: 80},
            {field: 'JL', title: '', width: 80},
            {field: 'CHLCD', title: '', width: 80},
            {field: 'QFYJ', title: '', width: 80},
            {field: 'SJLQ', title: '', width: 80},
            {field: 'SHB', title: '', width: 80},
            {field: 'CLYJ', title: '', width: 80},
            {field: 'SHIYBH', title: '', width: 80},
            {field: 'GCMC', title: '', width: 80},
            {field: 'BGBBH', title: '', width: 80},
            {field: 'SHIPZ', title: '', width: 80},
            {field: 'XHBZ', title: '', width: 80},
            {field: 'SNCB', title: '', width: 80},
            {field: 'WJJMC', title: '', width: 80},
            {field: 'ZXGC', title: '', width: 80},
            {field: 'SJCC', title: '', width: 80},
            {field: 'SL', title: '', width: 80},
            {field: 'SKSDRQ', title: '', width: 80},
            {field: 'SYXMDM', title: '', width: 80},
            {field: 'SHISYBH', title: '', width: 80},
            {field: 'JSFZR', title: '', width: 80},
            {field: 'SHAHNL', title: '', width: 80},
            {field: 'SYR', title: '', width: 80},
            {field: 'PZJCD', title: '', width: 80},
            {field: 'SJBH', title: '', width: 80},
            {field: 'SYMC', title: '', width: 80},
            {field: 'SCTLD', title: '', width: 80},
            {field: 'SHACD', title: '', width: 80},
            {field: 'HZ2', title: '', width: 80},
            {field: 'WJJZYSNL', title: '', width: 80},
            {field: 'DWDM', title: '', width: 80},
            {field: 'SNYL', title: '', width: 80},
            {field: 'ZMRQ', title: '', width: 80},
            {field: 'WTDWMC', title: '', width: 80},
            {field: 'KYQD', title: '', width: 80},
            {field: 'BGRQ', title: '', width: 80},
            {field: 'CHLZYSNL', title: '', width: 80},
            {field: 'XHRBH', title: '', width: 80},
            {field: 'SYRQ', title: '', width: 80},
            {field: 'PZJCL', title: '', width: 80},
            {field: 'SGPHB', title: '', width: 80},
            {field: 'SNPZ', title: '', width: 80},
            {field: 'SHAPZ', title: '', width: 80},
            {field: 'YQLQ', title: '', width: 80},
            {field: 'WTZH', title: '', width: 80},
            {field: 'SYBH', title: '', width: 80},
            {field: 'YQBH', title: '', width: 80},
            {field: 'SHIYL', title: '', width: 80},
            {field: 'BZ', title: '', width: 80},
            {field: 'FMHZYSNL', title: '', width: 80},
            {field: 'XHYJ', title: '', width: 80},
            {field: 'WJJCD', title: '', width: 80},
            {field: 'SNCCRQ', title: '', width: 80},
            {field: 'HGBZ', title: '', width: 80},
            {field: 'NPQD', title: '', width: 80},
            {field: 'SKYHTJ', title: '', width: 80},
            {field: 'PZJYL', title: '', width: 80},
            {field: 'yn', title: '操作', width: 100}
        ]],
        pagination: true,
        rownumbers: true
    });
}

/**
 * 查询
 */
function query() {
    var validator=$('#searchForm').validate(formValidator);
    if(validator.form()) {
        var queryParams = $('#ordertable').datagrid('options').queryParams;
        $('#ordertable').datagrid('options').url = '/hunNingTuKangYa/search.json';
        // $('#ordertable').datagrid('options').url = '/hntky/search.json';
        queryParams.shelfNo = $('#shelfNo').val();
        queryParams.shelfType = $('#shelfType').val();
        $("#ordertable").datagrid('clearSelections');
        $("#ordertable").datagrid('load');
    }
}
